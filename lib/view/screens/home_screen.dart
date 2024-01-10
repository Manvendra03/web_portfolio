import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/model/constants/constants.dart';
import 'package:web_portfolio/view/widgets/custom_elevated_button.dart';
import 'package:web_portfolio/view/widgets/social_media_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: [
        FadeEffect(
            curve: Curves.easeInOut, duration: Duration(milliseconds: 1000))
      ],
      child: Stack(
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
              ? Animate(effects: const [
                  AlignEffect(
                      begin: Alignment.topLeft,
                      duration: Duration(milliseconds: 700),
                      end: Alignment.centerLeft),
                ], child: const SocialMediaBar())
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
                    Animate(
                      effects: const [
                        FadeEffect(
                            curve: Curves.easeIn,
                            duration: Duration(milliseconds: 800))
                      ],
                      child: AutoSizeText(
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
                    ),
                    const Flexible(
                      child: SizedBox(
                        height: 15,
                        width: double.infinity,
                      ),
                    ),
                    Animate(
                      effects: const [
                        FadeEffect(
                            curve: Curves.easeIn,
                            duration: Duration(milliseconds: 800))
                      ],
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: AutoSizeText(
                          home_screen_intro,
                          style: TextStyle(color: Colors.grey.shade800),
                          textAlign: TextAlign.center,
                          maxFontSize: 20,
                          minFontSize: 12,
                        ),
                      ),
                    ),
                    const Flexible(
                      child: SizedBox(
                        height: 20,
                        width: double.infinity,
                      ),
                    ),
                    Animate(
                        effects: const [
                          FadeEffect(
                              curve: Curves.easeIn,
                              duration: Duration(milliseconds: 800))
                        ],
                        child: const CustomElevatedButton(
                          tittle: "RESUME",
                          url:
                              "https://drive.google.com/file/d/104FhILUAxWG5j1kSXVShgAf0tN-mzrj8/view?usp=sharing",
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
