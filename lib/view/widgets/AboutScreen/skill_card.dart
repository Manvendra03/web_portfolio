import 'package:flutter/material.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({super.key, required this.tittle});

  final String tittle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      decoration: BoxDecoration(
        // color: Colors.grey.shade600,
        color: Color.fromARGB(255, 204, 203, 242),

        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Text(
        tittle,
        style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2),
      ),
    );
  }
}
