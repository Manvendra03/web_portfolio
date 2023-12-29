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
