import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AboutTextWidget extends StatelessWidget {
  const AboutTextWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: TextStyle(color: Colors.black),
      textAlign: TextAlign.start,
      maxFontSize: 22,
      minFontSize: 16,
      maxLines: 5,
    );
  }
}
