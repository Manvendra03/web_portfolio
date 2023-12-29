import 'package:flutter/material.dart';
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
        body: ListView(children: [
          // SizedBox(
          //     height: MediaQuery.of(context).size.height - 85,
          //     width: MediaQuery.of(context).size.width,
          //     child: const HomeScreen()),
          Container(
            color: Colors.grey.shade200,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text("About Me"),
                Container(
                  height: 2,
                  width: 20,
                  color: Colors.blue,
                ),
                Text(
                    "Here you will find more information about me, what I do, and my current skills mostly in terms of programming and technology"),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
