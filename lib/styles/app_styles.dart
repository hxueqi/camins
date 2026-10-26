import 'package:flutter/material.dart';

class AppStyles {
  // Colors
  static final Color green = Color(0xFF2E7D5B);
  static final Color lightGreen = Color(0xFFE3F1EA);
  static final Color orange = Color(0xFFF2994A);
  static final Color darkText = Color(0xFF1F2A2E);
  static final Color greyText = Color(0xFF6B7A80);
  static final Color background = Color(0xFFF6F8F7);
  static final Color white = Colors.white;
  static final Color divider = Color(0xFFE6EBE9);
  static final Color photoOverlay = Colors.black54;
  static final Color shadow = Colors.black12;
  static final Color ratingCountColor = Colors.white70;
  static final List<Color> headerGradient = [
    Colors.transparent,
    Colors.black87,
  ];

  // Separators
  static final Widget tinySeparator = SizedBox(width: 4, height: 4);
  static final Widget smallSeparator = SizedBox(width: 8, height: 8);
  static final Widget mediumSeparator = SizedBox(width: 16, height: 16);
  static final Widget bigSeparator = SizedBox(width: 24, height: 24);

  // Sizes
  static const double horizontalPadding = 20;
  static const double headerHeight = 320;
  static const double cardMargin = 16;
  static const double statsCardHeight = 88;
  static const double buttonHeight = 48;
  static const double buttonRadius = 14;
  static const double photoRadius = 12;
  static const double stageRowHeight = 68;
  static const double stageCircleSize = 32;
  static const double stageLineWidth = 2;
  static const double gap = 8;
  static const double pillRadius = 20;
  static const double cardRadius = 20;
  static const double cardElevation = 4;
  static const double buttonElevation = 2;
  static const double dividerIndent = 20;
  static const double barVerticalPadding = 12;
  static const double barShadowBlur = 12;
  static const double primaryButtonPadding = 24;
  static const double iconSmall = 16;
  static const double iconMedium = 20;
  static const double iconLarge = 22;
  static const EdgeInsets badgePadding = EdgeInsets.symmetric(
    horizontal: 12,
    vertical: 4,
  );
  static const EdgeInsets tagPadding = EdgeInsets.symmetric(
    horizontal: 12,
    vertical: 8,
  );
  static const double statsCardOverlap = 44;
  static const double roundButtonSize = 44;
  static const double roundButtonTop = 44;
  static const double roundButtonSide = 16;

  // Text styles
  static final TextStyle trailTitle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: white,
  );
  static final TextStyle sectionTitle = TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.bold,
    color: darkText,
  );
  static final TextStyle bodyText = TextStyle(
    fontSize: 15,
    color: greyText,
    height: 1.5,
  );
  static final TextStyle statValue = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: darkText,
  );
  static final TextStyle smallText = TextStyle(fontSize: 12, color: greyText);
  static final TextStyle regionBadge = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.bold,
    color: white,
    letterSpacing: 1,
  );
  static final TextStyle stageNumber = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle stageTime = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: greyText,
  );
  static final TextStyle linkText = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: green,
  );
  static final TextStyle buttonText = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle tagText = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: green,
  );
  static final TextStyle ratingValue = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: white,
  );
  static final TextStyle photoOverlayText = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: white,
  );
  static final TextStyle ratingCount = TextStyle(
    fontSize: 15,
    color: ratingCountColor,
  );
}
