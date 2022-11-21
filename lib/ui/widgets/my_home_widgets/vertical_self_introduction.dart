import 'package:flutter/material.dart';

import 'package:github_pages/ui/constants/colors.dart';
import 'package:github_pages/ui/mixins/screen_detector.dart';
import 'package:github_pages/ui/widgets/buttons/contact_me_button.dart';
import 'package:github_pages/ui/widgets/buttons/portfolio_button.dart';

class VerticalSelfIntroduction extends StatelessWidget with ScreenDetector {
  const VerticalSelfIntroduction({
    Key? key,
    required this.mediaQueryData,
  }) : super(key: key);

  final MediaQueryData mediaQueryData;

  @override
  Widget build(BuildContext context) {
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;
    final textScaleFactor = mediaQueryData.textScaleFactor;
    return Container(
      width: double.infinity,
      height: screenHeight < 900 ? screenHeight : 900,
      color: WebSiteColors.primaryColor200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            textScaleFactor: textScaleFactor,
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Hello!\n',
              style: valueSelectorByScreenSize(
                mediaQueryData: mediaQueryData,
                defaultValue: Theme.of(context)
                    .textTheme
                    .headline2
                    ?.copyWith(color: Colors.white, height: 1.5) as Object,
                portraitPhoneValue: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Colors.white, height: 1.5) as Object,
              ) as TextStyle,
              children: const [
                TextSpan(
                  text: 'I\'m Nilson Sasaki',
                )
              ],
            ),
          ),
          CircleAvatar(
            radius: screenWidth <= 840 ? screenWidth * 0.25 : 840 / 4,
            backgroundImage: const AssetImage('assets/Perfil.jpg'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: screenWidth * 0.4,
                height: screenHeight * 0.06,
                child: ContactMeButton(
                  mediaQueryData: mediaQueryData,
                  textScaleFactor: textScaleFactor,
                ),
              ),
              SizedBox(
                width: screenWidth * 0.02,
              ),
              SizedBox(
                width: screenWidth * 0.4,
                height: screenHeight * 0.06,
                child: PortfolioButton(
                  mediaQueryData: mediaQueryData,
                  textScaleFactor: textScaleFactor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
