import 'package:flutter/material.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({super.key, required this.tittle});

  final String tittle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      decoration: BoxDecoration(
        color: Colors.grey.shade600,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Text(
        tittle,
        style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.2),
      ),
    );
  }
}
