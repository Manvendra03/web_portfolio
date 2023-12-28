import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/view/widgets/navigation_bar_button.dart';
import 'package:web_portfolio/view/widgets/social_media_button.dart';

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
          leadingWidth: 90,
          leading: const Padding(
            padding: EdgeInsets.only(left: 40.0),
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
                  Icon(Icons.menu),
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
          SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: HomeScreen()),
          SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: HomeScreen()),
        ]),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            "/background.jpg",
            fit: BoxFit.cover,
            opacity: const AlwaysStoppedAnimation(.35),
          ),
        ),
        MediaQuery.of(context).size.width > 973
            ? const SocialMediaBar()
            : const SizedBox(),
        SizedBox(
          child: Center(
            child: Container(
              alignment: Alignment.center,
              height: 200,
              width: 800,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AutoSizeText(
                    "HEY, I'M MANVENDRA PATIDAR ",
                    style: GoogleFonts.archivoBlack(
                      fontSize: 40,
                      fontWeight: FontWeight.normal,
                    ),
                    maxFontSize: 50,
                    maxLines: 1,
                    // 40
                    minFontSize: 10,
                  ),
                  const Flexible(
                    child: SizedBox(
                      height: 15,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: AutoSizeText(
                      "A Frontend focused Application Developer building the Frontend of Mobile Applications and Web Applications that leads to the success of the overall product",
                      style: TextStyle(color: Colors.grey.shade800),
                      textAlign: TextAlign.center,
                      maxFontSize: 20,
                      minFontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class SocialMediaBar extends StatelessWidget {
  const SocialMediaBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: MediaQuery.of(context).size.height * .24,
      child: Container(
          height: 280,
          width: 70,
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SocialMediaButton(
                iconPath: "/Icons/linkedin.png",
                ontap: () {},
              ),
              SocialMediaButton(
                iconPath: "/Icons/github.png",
                ontap: () {},
              ),
              SocialMediaButton(
                iconPath: "/Icons/youtube.png",
                ontap: () {},
              ),
              SocialMediaButton(
                iconPath: "/Icons/twitter.png",
                ontap: () {},
              ),
              SocialMediaButton(
                iconPath: "/Icons/instagram.png",
                ontap: () {},
              ),
            ],
          )),
    );
  }
}
