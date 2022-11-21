import 'package:flutter/material.dart';

import 'package:github_pages/ui/constants/colors.dart';
import 'package:github_pages/ui/mixins/screen_detector.dart';
import 'package:github_pages/ui/widgets/buttons/contact_me_button.dart';
import 'package:github_pages/ui/widgets/buttons/portfolio_button.dart';

class HorizontalSelfIntroduction extends StatelessWidget with ScreenDetector {
  const HorizontalSelfIntroduction({
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
      height: screenHeight < 840 ? screenHeight : 840,
      color: WebSiteColors.primaryColor200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 4,
                child: Center(
                  child: RichText(
                    textScaleFactor: textScaleFactor,
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Hello!\n',
                      style: valueSelectorByScreenSize(
                        mediaQueryData: mediaQueryData,
                        defaultValue: Theme.of(context)
                            .textTheme
                            .headline2
                            ?.copyWith(
                                color: WebSiteColors.primaryColor600,
                                height: 1.5) as Object,
                        landscapePhoneValue: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(
                                color: WebSiteColors.primaryColor600,
                                height: 1.5) as Object,
                      ) as TextStyle,
                      children: const [
                        TextSpan(
                          text: 'I\'m Nilson Sasaki',
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.20,
                      height: screenHeight * 0.08,
                      child: ContactMeButton(
                        mediaQueryData: mediaQueryData,
                        textScaleFactor: textScaleFactor,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    SizedBox(
                      width: screenWidth * 0.20,
                      height: screenHeight * 0.08,
                      child: PortfolioButton(
                        mediaQueryData: mediaQueryData,
                        textScaleFactor: textScaleFactor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          CircleAvatar(
            radius: screenHeight <= 840 ? screenHeight * 0.25 : 840 / 4,
            backgroundImage: const AssetImage('assets/Perfil.jpg'),
          ),
        ],
      ),
    );
  }
}
