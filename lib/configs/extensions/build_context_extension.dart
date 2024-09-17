import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  bool get isDesktop => MediaQuery.of(this).size.width >= 1200;
  bool get isTablet =>
      MediaQuery.of(this).size.width >= 600 &&
      MediaQuery.of(this).size.width < 1200;
  bool get isMobile => MediaQuery.of(this).size.width < 600;
}
