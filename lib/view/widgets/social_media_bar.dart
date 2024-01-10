import 'package:flutter/material.dart';
import 'package:web_portfolio/view/widgets/social_media_button.dart';

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
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SocialMediaButton(
                iconPath: "/Icons/linkedin.png",
                ontap:
                    "https://www.linkedin.com/in/manvendra-patidar-994709237/",
              ),
              SocialMediaButton(
                iconPath: "/Icons/github.png",
                ontap: "https://github.com/Manvendra03",
              ),
              SocialMediaButton(
                iconPath: "/Icons/youtube.png",
                ontap:
                    "https://youtube.com/@ManvendraPatidar?si=7EgGPQfK18Ur_gmp",
              ),
              SocialMediaButton(
                iconPath: "/Icons/twitter.png",
                ontap:
                    "https://x.com/Manvendra_apk?t=IkF5fSvMqqUyd1jDlCVIkg&s=09",
              ),
              SocialMediaButton(
                iconPath: "/Icons/instagram.png",
                ontap:
                    "https://www.instagram.com/_manvendra.apk?igsh=N3QwaXpiMGVveDJt",
              ),
            ],
          )),
    );
  }
}
