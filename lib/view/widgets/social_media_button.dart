import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  final String iconPath;
  final String ontap;

  const SocialMediaButton({
    super.key,
    required this.iconPath,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide.none))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: ImageIcon(
          AssetImage(iconPath),
          size: 25,
          color: Colors.black,
        ),
      ),
      onPressed: () async {
        final Uri _url = Uri.parse(ontap);
        if (ontap != 'empty' && !await launchUrl(_url)) {
          print("object has exception");
          throw Exception('Could not launch $_url');
        }
      },
    );
  }
}
