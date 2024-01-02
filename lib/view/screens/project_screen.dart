import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/model/constants/constants.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
      child: Column(
        children: [
          Column(
            children: [
              const Text(
                "PROJECTS",
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
                color: Color.fromARGB(255, 165, 163, 228),
              ),
              const SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: 800,
                child: AutoSizeText(
                  project_screen_intro,
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
            height: 20,
            width: double.infinity,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width > 770
                ? 720
                : MediaQuery.of(context).size.width * 2.1,
            width: double.infinity,
            // color: Colors.grey,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: MediaQuery.of(context).size.width > 770
                  ? (MediaQuery.of(context).size.width > 1060)
                      ? const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 3.5,
                          crossAxisCount: 2,
                          crossAxisSpacing: 35,
                          mainAxisSpacing: 35)
                      : const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2.4,
                          crossAxisCount: 2,
                          crossAxisSpacing: 35,
                          mainAxisSpacing: 35)
                  : const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 3,
                      crossAxisCount: 1,
                      crossAxisSpacing: 35,
                      mainAxisSpacing: 35),
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 204, 203, 242),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 3,
                        child: Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            height: double.infinity,
                            color: Colors.white,
                            child: Image.network(
                                "https://www.91-img.com/pictures/151039-v4-vivo-t2x-mobile-phone-large-1.jpg?tr=q-80")),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        flex: 10,
                        child: Container(
                          width: 500,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Spacer(),
                              const AutoSizeText(
                                "WallCraft : The Wallpaper App",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                maxFontSize: 25,
                                minFontSize: 22,
                                maxLines: 1,
                              ),
                              AutoSizeText(
                                "This is an simple wallpaper app with best user interface and  the best user experience This is an simple wallpaper app with best user interface and  the best user experience",
                                style: TextStyle(color: Colors.grey.shade700),
                                maxFontSize: 16,
                                minFontSize: 12,
                                maxLines: 2,
                              ),
                              const Flexible(
                                child: SizedBox(
                                  height: 20,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    elevation:
                                        const MaterialStatePropertyAll(10),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            side: BorderSide.none)),
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color(0xff764ABC))),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    "Project Link",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
