import 'dart:ui';
import 'package:flutter/widgets.dart';

extension DarkMode on BuildContext {
  /// is app theme is on Dark Mode?
  bool get isDarkMode {
    final brightness = MediaQuery.of(this).platformBrightness;
    return brightness == Brightness.dark;
  }
}
