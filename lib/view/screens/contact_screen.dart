import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/model/constants/constants.dart';
import 'package:web_portfolio/view/screens/home_screen.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({
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
              "Contact Me",
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
              color: Colors.blue,
            ),
            const SizedBox(
              height: 20,
              width: double.infinity,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: 700,
              child: AutoSizeText(
                contact_screen_intro,
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
        Container(
          color: Colors.white,
          width: 800,
          height: 600,
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.grey.shade600),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                  color: Colors.grey.shade300,
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Your Name',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.grey.shade500),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                "Email",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.grey.shade600),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                  color: Colors.grey.shade300,
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Your Email',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.grey.shade500),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                "Message",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.grey.shade600),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                  height: 200,
                  color: Colors.grey.shade300,
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Write Your Message',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.grey.shade500),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomElevatedButton(tittle: "  SUBMIT   "),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
