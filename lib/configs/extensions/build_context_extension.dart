import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  bool get isWearable => MediaQuery.of(this).size.width <= 280;

  bool get isSmallMobile =>
      MediaQuery.of(this).size.width > 280 &&
      MediaQuery.of(this).size.width < 576;

  bool get isStandardMobile =>
      MediaQuery.of(this).size.width >= 576 &&
      MediaQuery.of(this).size.width < 768;

  bool get isLargeMobile =>
      MediaQuery.of(this).size.width >= 768 &&
      MediaQuery.of(this).size.width < 992;

  bool get isTablet =>
      MediaQuery.of(this).size.width >= 992 &&
      MediaQuery.of(this).size.width < 1200;

  bool get isDesktop =>
      MediaQuery.of(this).size.width >= 1200 &&
      MediaQuery.of(this).size.width < 1400;

  bool get isLargeDesktop => MediaQuery.of(this).size.width >= 1400;

  /// Treating every Mobile and Tablets as one.
  bool get isCommonMobile =>
      isLargeMobile ||
      isTablet ||
      isLargeMobile ||
      isSmallMobile ||
      isStandardMobile;

  String get deviceType {
    if (isWearable) return "Wearable";
    if (isSmallMobile) return "Small Mobile";
    if (isStandardMobile) return "Standard Mobile";
    if (isLargeMobile) return "Large Mobile";
    if (isTablet) return "Tablet";
    if (isDesktop) return "Desktop";
    if (isLargeDesktop) return "Large Desktop";
    return "Unknown Device";
  }
}
