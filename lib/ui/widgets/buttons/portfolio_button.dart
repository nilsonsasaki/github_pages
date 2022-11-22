import 'package:flutter/material.dart';

import 'package:github_pages/ui/constants/colors.dart';
import 'package:github_pages/ui/mixins/screen_detector.dart';
import 'package:github_pages/ui/screens/pv_sizing_app.dart';

class PortfolioButton extends StatelessWidget with ScreenDetector {
  const PortfolioButton(
      {required this.mediaQueryData, this.textScaleFactor, Key? key})
      : super(key: key);

  final MediaQueryData mediaQueryData;
  final double? textScaleFactor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: WebSiteColors.primaryColor50,
        shape: const StadiumBorder(),
        textStyle: valueSelectorByScreenSize(
          mediaQueryData: mediaQueryData,
          defaultValue: Theme.of(context).textTheme.headline6 as Object,
          portraitPhoneValue: Theme.of(context).textTheme.button as Object,
          landscapePhoneValue: Theme.of(context).textTheme.button as Object,
        ) as TextStyle,
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(PvSizingApp.routeName);
      },
      child: Text(
        'My projects',
        textScaleFactor: textScaleFactor,
        style: const TextStyle(color: WebSiteColors.primaryColor600),
      ),
    );
  }
}
