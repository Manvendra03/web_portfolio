import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/model/constants/constants.dart';
import 'package:web_portfolio/view/screens/about_screen.dart';
import 'package:web_portfolio/view/screens/home_screen.dart';
import 'package:web_portfolio/view/widgets/navigation_bar_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Manvendra Patidar',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          backgroundColor: Colors.white,
          elevation: 10,
          leadingWidth: 60,
          leading: const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: CircleAvatar(),
          ),
          title: const Text(
            "MANVENDRA PATIDAR",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.black),
          ),
          actions: MediaQuery.of(context).size.width > 707
              ? [
                  NavigationBarButton(
                    tittle: "HOME",
                    ontap: () {
                      print(MediaQuery.of(context).size.width);
                    },
                  ),
                  const SizedBox(
                    height: double.infinity,
                    width: 20,
                  ),
                  NavigationBarButton(
                    tittle: "ABOUT",
                    ontap: () {},
                  ),
                  const SizedBox(
                    height: double.infinity,
                    width: 20,
                  ),
                  NavigationBarButton(
                    tittle: "PROJECT",
                    ontap: () {},
                  ),
                  const SizedBox(
                    height: double.infinity,
                    width: 20,
                  ),
                  NavigationBarButton(
                    tittle: "CONTACT",
                    ontap: () {},
                  ),
                  const Flexible(
                    child: SizedBox(
                      height: double.infinity,
                      width: 50,
                    ),
                  ),
                ]
              : [
                  const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  const Flexible(
                    child: SizedBox(
                      height: double.infinity,
                      width: 20,
                    ),
                  ),
                ],
          toolbarHeight: 85,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
                height: MediaQuery.of(context).size.height - 85,
                width: MediaQuery.of(context).size.width,
                child: const HomeScreen()),
            Container(
              padding: MediaQuery.of(context).size.width > 810
                  ? const EdgeInsets.only(top: 50, left: 100, right: 100)
                  : const EdgeInsets.only(top: 50, left: 20, right: 20),
              color: Colors.grey.shade200,
              child: const AboutScreen(),
            ),
            Container(
              padding: const EdgeInsets.only(top: 50, left: 100, right: 100),
              height: MediaQuery.of(context).size.height - 85,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Projects",
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
                        width: 800,
                        child: AutoSizeText(
                          "Here you will find more information about me, what I do, and my current skills mostly in terms of programming and technology",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.w400),
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
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
