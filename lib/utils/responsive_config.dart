import 'dart:math';

import 'package:flutter/cupertino.dart';

/// Context extension to provide responsive properties
extension ResponsiveConfig on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);

  double get statusBarHeight => mq.padding.top;

  double get screenWidth => mq.size.width;

  double get screenHeight => mq.size.height;

  double get screenRatio => screenHeight / screenWidth;

  double get widthPx => getWidthPx();

  double getWidthPx() {
    if (screenWidth <= 360) {
      return 0.8;
    } else if (screenWidth > 360 && screenWidth <= 600) {
      return 1.0;
    } else {
      return 1.5;
    }
  }

  double get heightPx => getHeightPx();

  double get scaledPx => getScaledSize();

  double get isTab => getTab();

  bool get isPhone => checkPhone();

  double getHeightPx() {
    if (screenWidth <= 360) {
      return 0.8;
    } else if (screenWidth > 360 && screenWidth <= 600) {
      return 1.0;
    } else {
      return 1.5;
    }
  }

  /// Helper function to scale size based on screen width
  double getScaledSize() {
    if (screenWidth <= 360) {
      return 0.8;
    } else if (screenWidth > 360 && screenWidth <= 600) {
      return 1.0;
    } else if (screenWidth >= 600 && screenWidth < 1200) {
      return 0.45;
    }
    return 1.5;
  }

  /// Helper function to scale size based on screen width
  double getTab() {
    if (screenWidth >= 600 && screenWidth < 1200) {
      return 1.7;
    }
    return 1;
  }

  /// Helper function to scale size based on screen width
  bool checkPhone() {
    if (screenWidth >= 600 && screenWidth < 1200) {
      return false;
    }
    return true;
  }

  double get textPx => getTextPx();

  double getTextPx() {
    if (screenWidth <= 360) {
      return 0.8;
    } else if (screenWidth > 360 && screenWidth <= 600) {
      return 1.0;
    } else {
      return 1.2;
    }
  }

  double get percentWidth => screenWidth / 100;

  double get percentHeight => screenHeight / 100;
}

// ignore: avoid_classes_with_only_static_members
/// Helper class for window properties (size) without context extension
class WindowProperties {
  // static final MediaQueryData mq = MediaQueryData.fromView(WidgetsBinding.instance.window);
  static final MediaQueryData mq = MediaQueryData.fromView(
      WidgetsBinding.instance.platformDispatcher.views.single);

  static double get statusBarHeight => mq.padding.top;

  static double get bottomBarHeight => mq.padding.bottom;

  static double get screenWidth => mq.size.width;

  static double get screenHeight => mq.size.height;

  static double get safeScreenHeight =>
      mq.size.height - (statusBarHeight + bottomBarHeight);

  static double get screenRatio => screenHeight / screenWidth;

  static double get widthPx => screenWidth / _FigmaFileDetails.screenWidth;

  static double get heightPx => screenHeight / _FigmaFileDetails.screenHeight;

  static double get textPx => min(screenWidth / _FigmaFileDetails.screenWidth,
      screenHeight / _FigmaFileDetails.screenHeight);
}

/// Constants for Figma file screen size
class _FigmaFileDetails {
  static const double screenWidth = 375;
  static const double screenHeight = 812;
}

/// Helper functions to get width and height based on screen size
double getWidth(BuildContext context,
    {double gt600 = 30, double gt360 = 15, double lt360 = 10}) {
  if (context.screenWidth > 600) {
    return context.percentWidth * gt600;
  }

  return context.screenWidth < 600 && context.screenWidth > 360
      ? context.percentWidth * gt360
      : context.percentWidth * lt360;
}

double getScaleWidth(BuildContext context,
    {double gt600 = 30, double gt360 = 15, double lt360 = 10}) {
  if (context.screenWidth > 600) {
    return context.widthPx * gt600;
  }

  return context.screenWidth < 600 && context.screenWidth > 360
      ? context.widthPx * gt360
      : context.widthPx * lt360;
}

double getHeight(BuildContext context,
    {double gt600 = 30, double gt360 = 15, double lt360 = 10}) {
  if (context.screenWidth > 600) {
    return context.heightPx * gt600;
  }

  return context.screenWidth < 600 && context.screenWidth > 360
      ? context.heightPx * gt360
      : context.heightPx * lt360;
}
