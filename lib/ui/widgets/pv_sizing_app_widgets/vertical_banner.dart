import 'package:flutter/material.dart';

import 'package:github_pages/ui/constants/colors.dart';
import 'package:github_pages/ui/mixins/screen_detector.dart';

class VerticalBanner extends StatelessWidget with ScreenDetector {
  const VerticalBanner({
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
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
          image: AssetImage('assets/pv_module_image.jpg'),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(screenHeight * 0.015),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenWidth * 0.03),
              color: Colors.black45,
            ),
            child: RichText(
              textScaleFactor: textScaleFactor,
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Curso Solar\n',
                style: valueSelectorByScreenSize(
                  mediaQueryData: mediaQueryData,
                  defaultValue: Theme.of(context).textTheme.headline1?.copyWith(
                      color: WebSiteColors.primaryColorLight,
                      fontWeight: FontWeight.bold,
                      height: 1.5) as Object,
                  portraitPhoneValue: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.copyWith(
                          color: WebSiteColors.primaryColorLight,
                          fontWeight: FontWeight.bold,
                          height: 1.5) as Object,
                ) as TextStyle,
                children: const [
                  TextSpan(
                    text: 'USP',
                  )
                ],
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
            radius: screenWidth <= 840 ? screenWidth * 0.25 : 840 / 4,
            backgroundImage: const AssetImage('assets/logo_curso_solar.png'),
          ),
        ],
      ),
    );
  }
}
