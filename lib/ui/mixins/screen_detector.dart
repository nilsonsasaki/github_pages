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

  Widget selectWidgetByScreenSize({
    required MediaQueryData mediaQueryData,
    required Widget defaultWidget,
    Widget? portraitDefaultWidget,
    Widget? portraitPhoneWidget,
    Widget? portraitTabletWidget,
    Widget? portraitDesktopWidget,
    Widget? landscapeDefaultWidget,
    Widget? landscapePhoneWidget,
    Widget? landscapeTabletWidget,
    Widget? landscapeDesktopWidget,
  }) {
    final screenType = detectScreen(mediaQueryData: mediaQueryData);

    switch (screenType) {
      case ScreenType.unknownScreen:
        {
          return defaultWidget;
        }
      case ScreenType.portraitPhoneScreen:
        {
          return portraitPhoneWidget ?? portraitDefaultWidget ?? defaultWidget;
        }
      case ScreenType.portraitTabletScreen:
        {
          return portraitTabletWidget ?? portraitDefaultWidget ?? defaultWidget;
        }
      case ScreenType.portraitDesktopScreen:
        {
          return portraitDesktopWidget ??
              portraitDefaultWidget ??
              defaultWidget;
        }
      case ScreenType.landscapeDesktopScreen:
        {
          return landscapeDesktopWidget ??
              landscapeDefaultWidget ??
              defaultWidget;
        }
      case ScreenType.landscapeTabletScreen:
        {
          return landscapeTabletWidget ??
              landscapeDefaultWidget ??
              defaultWidget;
        }
      case ScreenType.landscapePhoneScreen:
        {
          return landscapePhoneWidget ??
              landscapeDefaultWidget ??
              defaultWidget;
        }
    }
  }

  Object valueSelectorByScreenSize({
    required MediaQueryData mediaQueryData,
    required Object defaultValue,
    Object? portraitDefaultValue,
    Object? portraitPhoneValue,
    Object? portraitTabletValue,
    Object? portraitDesktopValue,
    Object? landscapeDefaultValue,
    Object? landscapePhoneValue,
    Object? landscapeTabletValue,
    Object? landscapeDesktopValue,
  }) {
    final screenType = detectScreen(mediaQueryData: mediaQueryData);

    switch (screenType) {
      case ScreenType.unknownScreen:
        {
          return defaultValue;
        }
      case ScreenType.portraitPhoneScreen:
        {
          return portraitPhoneValue ?? portraitDefaultValue ?? defaultValue;
        }
      case ScreenType.portraitTabletScreen:
        {
          return portraitTabletValue ?? portraitDefaultValue ?? defaultValue;
        }
      case ScreenType.portraitDesktopScreen:
        {
          return portraitDesktopValue ?? portraitDefaultValue ?? defaultValue;
        }
      case ScreenType.landscapeDesktopScreen:
        {
          return landscapeDesktopValue ?? landscapeDefaultValue ?? defaultValue;
        }
      case ScreenType.landscapeTabletScreen:
        {
          return landscapeTabletValue ?? landscapeDefaultValue ?? defaultValue;
        }
      case ScreenType.landscapePhoneScreen:
        {
          return landscapePhoneValue ?? landscapeDefaultValue ?? defaultValue;
        }
    }
  }
}
