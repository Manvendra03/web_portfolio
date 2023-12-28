import 'package:flutter/material.dart';

class NavigationBarButton extends StatelessWidget {
  final String tittle;
  final Function ontap;

  NavigationBarButton({
    required this.tittle,
    required this.ontap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        ontap();
      },
      style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide.none))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Text(
          tittle.toString(),
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black),
        ),
      ),
    );
  }
}
