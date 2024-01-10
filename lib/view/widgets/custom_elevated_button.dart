import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomElevatedButton extends StatefulWidget {
  const CustomElevatedButton(
      {super.key, required this.tittle, required this.url});
  final String tittle;
  final String url;

  @override
  State<CustomElevatedButton> createState() =>
      _CustomElevatedButtonState(tittle: tittle, url: url);
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  final String tittle;
  bool isHover = false;
  final String url;

  _CustomElevatedButtonState({required this.tittle, required this.url});
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
          onPressed: () async {
            final Uri _url = Uri.parse(url);
            if (url != 'empty' && !await launchUrl(_url)) {
              throw Exception('Could not launch $_url');
            }
          },
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
