import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;
  static double halfHorizontal;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    print(_mediaQueryData.orientation);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;
    defaultSize = orientation == Orientation.landscape
        ? screenHeight * 0.024
        : screenWidth * 0.024;
    halfHorizontal = _mediaQueryData.size.width / 2;
  }
}
