import 'package:flutter/material.dart';

enum ScreenSize { small, medium, large }

ScreenSize getScreenSize(BuildContext context) {
  final double deviceWidth = MediaQuery.of(context).size.shortestSide;
  if (deviceWidth > 840) {
    return ScreenSize.large;
  } else if (deviceWidth > 599) {
    return ScreenSize.medium;
  } else {
    return ScreenSize.small;
  }
}

ScreenSize getScreenSizeByWidth(BuildContext context) {
  final double deviceWidth = MediaQuery.of(context).size.width;
  if (deviceWidth > 840) {
    return ScreenSize.large;
  } else if (deviceWidth > 599) {
    return ScreenSize.medium;
  } else {
    return ScreenSize.small;
  }
}