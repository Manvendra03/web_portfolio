import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final String iconPath;
  final Function ontap;

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
      onPressed: () {
        ontap();
      },
    );
  }
}
