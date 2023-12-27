import 'package:flutter/material.dart';

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
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: 90,
          leading: Padding(
            padding: const EdgeInsets.only(left: 40.0),
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
          actions: [
            NavigationBarButton(
              tittle: "HOME",
              ontap: () {},
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
            Flexible(
              child: const SizedBox(
                height: double.infinity,
                width: 50,
              ),
            ),
          ],
          toolbarHeight: 85,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "/background.jpg",
                fit: BoxFit.cover,
                opacity: const AlwaysStoppedAnimation(.35),
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
      onPressed: () {},
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
