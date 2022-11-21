import 'package:flutter/material.dart';

import 'package:github_pages/ui/mixins/screen_detector.dart';
import 'package:github_pages/ui/widgets/my_home_widgets/horizontal_self_introduction.dart';
import 'package:github_pages/ui/widgets/my_home_widgets/vertical_self_introduction.dart';

class MyHomePage extends StatelessWidget with ScreenDetector {
  const MyHomePage({super.key});

  static const routeName = '/';

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
            defaultWidget: HorizontalSelfIntroduction(
              mediaQueryData: mediaQueryData,
            ),
            portraitDefaultWidget: VerticalSelfIntroduction(
              mediaQueryData: mediaQueryData,
            ),
          ),
        ],
      ),
    );
  }
}