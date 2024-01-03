import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/view/widgets/AboutScreen/about_section.dart';
import 'package:web_portfolio/view/widgets/AboutScreen/skill_section.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "ABOUT ME",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
              width: double.infinity,
            ),
            Container(
              height: 4,
              width: 150,
              color: Color.fromARGB(255, 167, 164, 236),
            ),
            const SizedBox(
              height: 20,
              width: double.infinity,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: 800,
              child: AutoSizeText(
                "Here you will find more information about me, what I do, and my current skills mostly in terms of programming and technology",
                style: TextStyle(
                    color: Colors.grey.shade800, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
                maxFontSize: 20,
                minFontSize: 16,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
          width: double.infinity,
        ),
        MediaQuery.of(context).size.width > 810
            ? const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(child: AboutSection()),
                  SizedBox(
                    width: 30,
                  ),
                  Flexible(child: SkillSection())
                ],
              )
            : const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [AboutSection(), SkillSection()],
              )
      ],
    );
  }
}
