import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/model/constants/constants.dart';
import 'package:web_portfolio/view/widgets/custom_elevated_button.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({
    super.key,
  });

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController txt1 = TextEditingController();

  TextEditingController txt2 = TextEditingController();

  TextEditingController txt3 = TextEditingController();

  bool isHover = false;

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
                    controller: txt1,
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
                    controller: txt2,
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
                    controller: txt3,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AnimatedContainer(
                    height:
                        100, //there should be outline/dimensions for the box.
                    //Otherway, You can use positioned widget
                    duration: Duration(milliseconds: 100),
                    padding: EdgeInsets.only(
                        top: (isHover) ? 25 : 30.0,
                        bottom: !(isHover) ? 25 : 30),
                    child: InkWell(
                      onTap: () {},
                      child: ElevatedButton(
                        onPressed: () {
                          txt1.clear();
                          txt2.clear();
                          txt3.clear();
                        },
                        style: ButtonStyle(
                            elevation: MaterialStatePropertyAll(10),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: BorderSide.none)),
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xff764ABC))),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "  SUBMIT  ",
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
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    txt1.dispose();
    txt2.dispose();
    txt3.dispose();
    super.dispose();
  }
}
