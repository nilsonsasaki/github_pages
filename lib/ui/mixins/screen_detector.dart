import 'package:flutter/material.dart';

enum ScreenType {
  unknownScreen,
  portraitPhoneScreen,
  portraitTabletScreen,
  portraitDesktopScreen,
  landscapePhoneScreen,
  landscapeTabletScreen,
  landscapeDesktopScreen,
}

mixin ScreenDetector {
  ScreenType detectScreen({
    required MediaQueryData mediaQueryData,
  }) {
    if (mediaQueryData.orientation == Orientation.portrait) {
      if (mediaQueryData.size.width < 600) {
        return ScreenType.portraitPhoneScreen;
      }
      if (mediaQueryData.size.width < 840) {
        return ScreenType.portraitTabletScreen;
      }
      if (mediaQueryData.size.width >= 840) {
        return ScreenType.portraitDesktopScreen;
      }
    } else {
      if (mediaQueryData.size.height < 480) {
        return ScreenType.landscapePhoneScreen;
      }
      if (mediaQueryData.size.height < 900) {
        return ScreenType.landscapeTabletScreen;
      }
      if (mediaQueryData.size.height >= 900) {
        return ScreenType.landscapeDesktopScreen;
      }
    }
    return ScreenType.unknownScreen;
  }

  Widget selectScreen({
    required MediaQueryData mediaQueryData,
    required Widget defaultScreen,
    Widget? portraitPhoneScreen,
    Widget? portraitTabletScreen,
    Widget? portraitDesktopScreen,
    Widget? landscapePhoneScreen,
    Widget? landscapeTabletScreen,
    Widget? landscapeDesktopScreen,
  }) {
    final screenType = detectScreen(mediaQueryData: mediaQueryData);

    switch (screenType) {
      case ScreenType.unknownScreen:
        {
          return defaultScreen;
        }
      case ScreenType.portraitPhoneScreen:
        {
          return portraitPhoneScreen ?? defaultScreen;
        }
      case ScreenType.portraitTabletScreen:
        {
          return portraitTabletScreen ?? defaultScreen;
        }
      case ScreenType.portraitDesktopScreen:
        {
          return portraitDesktopScreen ?? defaultScreen;
        }
      case ScreenType.landscapeDesktopScreen:
        {
          return landscapeDesktopScreen ?? defaultScreen;
        }
      case ScreenType.landscapeTabletScreen:
        {
          return landscapeTabletScreen ?? defaultScreen;
        }
      case ScreenType.landscapePhoneScreen:
        {
          return landscapePhoneScreen ?? defaultScreen;
        }
    }
  }

  double scaleFactorSelector({
    required MediaQueryData mediaQueryData,
    required double defaultScaleFactor,
    double? portraitPhoneScaleFactor,
    double? portraitTabletScaleFactor,
    double? portraitDesktopScaleFactor,
    double? landscapePhoneScaleFactor,
    double? landscapeTabletScaleFactor,
    double? landscapeDesktopScaleFactor,

  }) {
    final screenType = detectScreen(mediaQueryData: mediaQueryData);

    switch (screenType) {
      case ScreenType.unknownScreen:
        {
          return defaultScaleFactor;
        }
      case ScreenType.portraitPhoneScreen:
        {
          return portraitPhoneScaleFactor ?? defaultScaleFactor;
        }
      case ScreenType.portraitTabletScreen:
        {
          return portraitTabletScaleFactor ?? defaultScaleFactor;
        }
      case ScreenType.portraitDesktopScreen:
        {
          return portraitDesktopScaleFactor ?? defaultScaleFactor;
        }
      case ScreenType.landscapeDesktopScreen:
        {
          return landscapeDesktopScaleFactor ?? defaultScaleFactor;
        }
      case ScreenType.landscapeTabletScreen:
        {
          return landscapeTabletScaleFactor ?? defaultScaleFactor;
        }
      case ScreenType.landscapePhoneScreen:
        {
          return landscapePhoneScaleFactor ?? defaultScaleFactor;
        }
    }
  }
}
