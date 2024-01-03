import 'package:flutter/material.dart';
import 'package:web_portfolio/view/widgets/AboutScreen/skill_card.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      // color: Colors.grey.shade300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "My Skills",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 120,
            width: 400,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.9,
                  maxCrossAxisExtent: 100),
              children: const [
                SkillCard(
                  tittle: "C / C++",
                ),
                SkillCard(
                  tittle: "java",
                ),
                SkillCard(
                  tittle: "Flutter",
                ),
                SkillCard(
                  tittle: "Firebase",
                ),
                SkillCard(
                  tittle: "DART",
                ),
                SkillCard(
                  tittle: "REST API",
                ),
                SkillCard(
                  tittle: "HTML",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
