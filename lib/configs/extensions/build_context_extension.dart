import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  bool get isWearable => MediaQuery.of(this).size.width <= 280;

  // Portrait mode breakpoints
  static const int portraitMobileMaxWidth = 600;
  static const int portraitTabletMaxWidth = 1024;
  static const int portraitDesktopMaxWidth = 1400;

  // Landscape mode breakpoints
  static const int landscapeMobileMaxHeight = 300;
  static const int landscapeTabletMaxHeight = 800;
  static const int landscapeDesktopMaxHeight = 1000;

  Size get _screenSize => MediaQuery.of(this).size;

  /// Use this instead of `MediaQuery.orientation` to support web/desktop
  bool get isPortraitLike => _screenSize.height >= _screenSize.width;

  bool get isMobile {
    return isPortraitLike
        ? _screenSize.width <= portraitMobileMaxWidth
        : _screenSize.height <= landscapeMobileMaxHeight;
  }

  bool get isTablet {
    return isPortraitLike
        ? _screenSize.width > portraitMobileMaxWidth &&
            _screenSize.width <= portraitTabletMaxWidth
        : _screenSize.height > landscapeMobileMaxHeight &&
            _screenSize.height <= landscapeTabletMaxHeight;
  }

  bool get isDesktop {
    return isPortraitLike
        ? _screenSize.width > portraitTabletMaxWidth &&
            _screenSize.width <= portraitDesktopMaxWidth
        : _screenSize.height > landscapeTabletMaxHeight &&
            _screenSize.height <= landscapeDesktopMaxHeight;
  }

  bool get isLargeDesktop {
    return isPortraitLike
        ? _screenSize.width > portraitDesktopMaxWidth
        : _screenSize.height > landscapeDesktopMaxHeight;
  }

  bool get isCommonDesktop => isDesktop || isLargeDesktop;

  String get deviceType {
    if (isWearable) return "Wearable";

    if (isMobile) return "Standard Mobile";

    if (isTablet) return "Tablet";
    if (isDesktop) return "Desktop";
    if (isLargeDesktop) return "Large Desktop";
    return "Unknown Device";
  }
}
