import 'package:flutter/material.dart';
import 'package:github_pages/ui/constants/strings.dart';

class PtPrivacyPolicy extends StatelessWidget {
  const PtPrivacyPolicy({required this.mediaQueryData, Key? key})
      : super(key: key);

  final MediaQueryData mediaQueryData;

  @override
  Widget build(BuildContext context) {
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;
    final textScaleFactor = mediaQueryData.textScaleFactor;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
      width: (screenWidth < 1200) ? screenWidth : 1200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            Strings.ptPrivacyPolicy,
            textAlign: TextAlign.center,
            textScaleFactor: textScaleFactor,
            style: Theme.of(context).textTheme.headline3,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
            child: RichText(
              textScaleFactor: textScaleFactor,
              textAlign: TextAlign.start,
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyLarge,
                children: const [
                  TextSpan(
                    text: Strings.ptPrivacyPolicyContent1,
                  ),
                  TextSpan(text: '\n\n'),
                  TextSpan(text: Strings.ptPrivacyPolicyContent2),
                  TextSpan(text: '\n\n'),
                  TextSpan(text: Strings.ptPrivacyPolicyContent3),
                ],
              ),
            ),
          ),
          Text(
            Strings.ptWhatDataAreCollected,
            textScaleFactor: textScaleFactor,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline4,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
            child: Text(
              Strings.ptPersonalData,
              textScaleFactor: textScaleFactor,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Text(
            Strings.ptPersonalDataContent,
            textScaleFactor: textScaleFactor,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
            child: Text(
              Strings.ptUserGenerated,
              textScaleFactor: textScaleFactor,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Text(
            Strings.ptUserGeneratedContent,
            textScaleFactor: textScaleFactor,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
            child: Text(
              Strings.ptSecurity,
              textScaleFactor: textScaleFactor,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Text(
            Strings.ptSecurityContent,
            textScaleFactor: textScaleFactor,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
            child: Text(
              Strings.ptLinksToOtherWebsites,
              textScaleFactor: textScaleFactor,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Text(
            Strings.ptLinksToOtherWebsitesContent,
            textScaleFactor: textScaleFactor,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
            child: Text(
              Strings.ptAdvertising,
              textScaleFactor: textScaleFactor,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Text(
            Strings.ptAdvertisingContent,
            textScaleFactor: textScaleFactor,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
            child: Text(
              Strings.ptUseStatistics,
              textScaleFactor: textScaleFactor,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Text(
            Strings.ptUseStatisticsContent,
            textScaleFactor: textScaleFactor,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
            child: Text(
              Strings.ptContactUs,
              textScaleFactor: textScaleFactor,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Text(
            Strings.ptContactUsContent,
            textScaleFactor: textScaleFactor,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
            child: Text(
              Strings.ptUpdate,
              textScaleFactor: textScaleFactor,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Text(
            Strings.ptUpdateContent,
            textScaleFactor: textScaleFactor,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
            child: Text(
              Strings.ptAttention,
              textScaleFactor: textScaleFactor,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Text(
            Strings.ptAttentionContent,
            textScaleFactor: textScaleFactor,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
