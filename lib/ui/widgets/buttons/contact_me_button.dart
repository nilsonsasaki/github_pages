import 'package:flutter/material.dart';

import 'package:github_pages/ui/constants/colors.dart';
import 'package:github_pages/ui/mixins/screen_detector.dart';
import 'package:github_pages/ui/mixins/url_launcher.dart';

class ContactMeButton extends StatelessWidget with ScreenDetector, UrlLauncher {
  const ContactMeButton(
      {required this.mediaQueryData, this.textScaleFactor, Key? key})
      : super(key: key);

  final MediaQueryData mediaQueryData;
  final double? textScaleFactor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: WebSiteColors.primaryColor600,
        shape: const StadiumBorder(),
        textStyle: valueSelectorByScreenSize(
          mediaQueryData: mediaQueryData,
          defaultValue: Theme.of(context).textTheme.headline6 as Object,
          portraitPhoneValue: Theme.of(context).textTheme.button as Object,
          landscapePhoneValue: Theme.of(context).textTheme.button as Object,
        ) as TextStyle,
      ),
      onPressed: () async {
        await launchInBrowser(
            Uri.parse('https://www.linkedin.com/in/nilsonsasaki/'));
      },
      child: Text(
        'Contact me',
        textScaleFactor: textScaleFactor,
      ),
    );
  }
}
