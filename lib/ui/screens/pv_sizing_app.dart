import 'package:flutter/material.dart';
import 'package:github_pages/ui/mixins/screen_detector.dart';
import 'package:github_pages/ui/widgets/pv_sizing_app_widgets/horizontal_banner.dart';
import 'package:github_pages/ui/widgets/pv_sizing_app_widgets/pt_privacy_policy.dart';
import 'package:github_pages/ui/widgets/pv_sizing_app_widgets/vertical_banner.dart';

class PvSizingApp extends StatelessWidget with ScreenDetector {
  const PvSizingApp({Key? key}) : super(key: key);

  static const routeName = '/curso-solar-usp';

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final ScrollController controller = ScrollController();

    return Scaffold(
      body: ListView(
        controller: controller,
        children: [
          selectWidgetByScreenSize(
            mediaQueryData: mediaQueryData,
            defaultWidget: HorizontalBanner(
              mediaQueryData: mediaQueryData,
            ),
            portraitDefaultWidget: VerticalBanner(
              mediaQueryData: mediaQueryData,
            ),
          ),
          Center(
            child: PtPrivacyPolicy(
              mediaQueryData: mediaQueryData,
            ),
          ),
        ],
      ),
    );
  }
}
