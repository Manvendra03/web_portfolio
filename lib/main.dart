import 'package:flutter/material.dart';
import 'package:web_portfolio/view/screens/about_screen.dart';
import 'package:web_portfolio/view/screens/contact_screen.dart';
import 'package:web_portfolio/view/screens/home_screen.dart';
import 'package:web_portfolio/view/screens/project_screen.dart';
import 'package:web_portfolio/view/widgets/navigation_bar_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  ScrollController _scrollController = ScrollController();

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
            child: CircleAvatar(
              child: Text(
                "M",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
          title: const Text(
            "MANVENDRA PATIDAR",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Color.fromARGB(255, 45, 16, 94)),
          ),
          actions: MediaQuery.of(context).size.width > 707
              ? [
                  NavigationBarButton(
                    tittle: "HOME",
                    ontap: () {
                      _scrollController.animateTo(0,
                          duration: const Duration(milliseconds: 600),
                          curve: Curves.easeIn);
                    },
                  ),
                  const SizedBox(
                    height: double.infinity,
                    width: 20,
                  ),
                  NavigationBarButton(
                    tittle: "ABOUT",
                    ontap: () {
                      _scrollController.animateTo(
                          MediaQuery.of(context).size.height - 85,
                          duration: const Duration(milliseconds: 600),
                          curve: Curves.easeIn);
                    },
                  ),
                  const SizedBox(
                    height: double.infinity,
                    width: 20,
                  ),
                  NavigationBarButton(
                    tittle: "PROJECT",
                    ontap: () {
                      _scrollController.animateTo(
                          (MediaQuery.of(context).size.width > 819
                                  ? MediaQuery.of(context).size.height
                                  : MediaQuery.of(context).size.height + 200) +
                              MediaQuery.of(context).size.height -
                              85,
                          duration: const Duration(milliseconds: 600),
                          curve: Curves.easeIn);
                    },
                  ),
                  const SizedBox(
                    height: double.infinity,
                    width: 20,
                  ),
                  NavigationBarButton(
                    tittle: "CONTACT",
                    ontap: () {
                      _scrollController.animateTo(
                          (MediaQuery.of(context).size.width > 819
                                  ? MediaQuery.of(context).size.height
                                  : MediaQuery.of(context).size.height + 170) +
                              MediaQuery.of(context).size.height -
                              85 +
                              (MediaQuery.of(context).size.width > 770
                                  ? MediaQuery.of(context).size.height * 1.2
                                  : MediaQuery.of(context).size.height * 2.9),
                          duration: const Duration(milliseconds: 600),
                          curve: Curves.easeIn);
                    },
                  ),
                  const Flexible(
                    child: SizedBox(
                      height: double.infinity,
                      width: 50,
                    ),
                  ),
                ]
              : [
                  GestureDetector(
                    onTap: () {
                      print(MediaQuery.of(context).size.width);
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
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
          controller: _scrollController,
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
              height: MediaQuery.of(context).size.width > 819
                  ? MediaQuery.of(context).size.height + 30
                  : MediaQuery.of(context).size.width > 400
                      ? MediaQuery.of(context).size.height + 200
                      : MediaQuery.of(context).size.height + 330,
              child: const AboutScreen(),
            ),
            Container(
              height: MediaQuery.of(context).size.width > 770
                  ? MediaQuery.of(context).size.height + 150
                  : (MediaQuery.of(context).size.width > 511)
                      ? MediaQuery.of(context).size.width * 2.6
                      : MediaQuery.of(context).size.width * 3.5,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade200,
              child: const ProjectScreen(),
            ),
            Container(
              padding: MediaQuery.of(context).size.width > 770
                  ? const EdgeInsets.only(top: 50, left: 100, right: 100)
                  : const EdgeInsets.only(top: 50, left: 30, right: 30),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: const ContactScreen(),
            ),
          ]),
        ),
      ),
    );
  }
}
