import 'package:flutter/widgets.dart';

class ResponsiveLayout {
  static bool isSmallScreen(BuildContext context) {
    const int kMobileWidth = 800;
    return MediaQuery.of(context).size.width < kMobileWidth;
  }
}
