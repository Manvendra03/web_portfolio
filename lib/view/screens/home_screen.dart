import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/model/constants/constants.dart';
import 'package:web_portfolio/view/widgets/social_media_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            "assets/background.jpg",
            fit: BoxFit.cover,
            opacity: const AlwaysStoppedAnimation(.35),
          ),
        ),
        MediaQuery.of(context).size.width > 973
            ? const SocialMediaBar()
            : const SizedBox(),
        SizedBox(
          child: Center(
            child: Container(
              alignment: Alignment.center,
              height: 260,
              width: 800,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AutoSizeText(
                    "HEY, I'M MANVENDRA PATIDAR ",
                    style: GoogleFonts.archivoBlack(
                      fontSize: 40,
                      fontWeight: FontWeight.normal,
                    ),
                    maxFontSize: 50,
                    maxLines: 1,
                    // 40
                    minFontSize: 10,
                  ),
                  const Flexible(
                    child: SizedBox(
                      height: 15,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: AutoSizeText(
                      home_screen_intro,
                      style: TextStyle(color: Colors.grey.shade800),
                      textAlign: TextAlign.center,
                      maxFontSize: 20,
                      minFontSize: 12,
                    ),
                  ),
                  const Flexible(
                    child: SizedBox(
                      height: 20,
                      width: double.infinity,
                    ),
                  ),
                  const CustomElevatedButton(tittle: "RESUME")
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CustomElevatedButton extends StatefulWidget {
  const CustomElevatedButton({super.key, required this.tittle});
  final String tittle;

  @override
  State<CustomElevatedButton> createState() =>
      _CustomElevatedButtonState(tittle: tittle);
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  final String tittle;
  bool isHover = false;

  _CustomElevatedButtonState({required this.tittle});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 100, //there should be outline/dimensions for the box.
      //Otherway, You can use positioned widget
      duration: Duration(milliseconds: 100),
      padding: EdgeInsets.only(
          top: (isHover) ? 25 : 30.0, bottom: !(isHover) ? 25 : 30),
      child: InkWell(
        onTap: () {},
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              elevation: MaterialStatePropertyAll(10),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide.none)),
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xff764ABC))),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              tittle,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        onHover: (val) {
          setState(() {
            isHover = val;
          });
        },
      ),
      /*val--->true when user brings in mouse
         val---> false when brings out his mouse*/
    );
  }
}
