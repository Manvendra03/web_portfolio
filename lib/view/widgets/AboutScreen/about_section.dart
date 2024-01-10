import 'package:flutter/material.dart';
import 'package:web_portfolio/model/constants/constants.dart';
import 'package:web_portfolio/view/widgets/custom_elevated_button.dart';
import 'package:web_portfolio/view/widgets/AboutScreen/about_text_widget.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 750,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Get to know me ! ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 30,
            width: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AboutTextWidget(text: about_text_para_1),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              AboutTextWidget(text: about_text_para_2),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              AboutTextWidget(
                text: about_text_para_3,
              ),
            ],
          ),
          CustomElevatedButton(
            tittle: "RESUME",
            url:
                "https://drive.google.com/file/d/104FhILUAxWG5j1kSXVShgAf0tN-mzrj8/view?usp=sharing",
          ),
        ],
      ),
    );
  }
}
