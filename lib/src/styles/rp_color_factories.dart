///
/// rp_color_factories.dart
/// rp_utils_dart
///
/// Convenience factory functions and presets for RPColor.
///

import 'package:rp_generated_dart/rp_generated_dart.dart';

// MARK: - RPColor Factories

/// Creates an RPColor from RGBA values (0–255 for RGB, 0.0–1.0 for opacity).
RPColor rpColorRGBA({required int red, required int green, required int blue, double opacity = 1.0}) {
  final color = RPColor();
  color.red = red;
  color.green = green;
  color.blue = blue;
  color.opacity = opacity;
  return color;
}

/// Creates an RPColor from a hex string (e.g. "#FF5733" or "FF5733").
RPColor rpColorHex(String hex) {
  var hexStr = hex.trim();
  if (hexStr.startsWith('#')) {
    hexStr = hexStr.substring(1);
  }

  if (hexStr.length != 6 && hexStr.length != 8) {
    return RPColor();
  }

  final hexValue = int.parse(hexStr, radix: 16);

  if (hexStr.length == 8) {
    return rpColorRGBA(
      red: (hexValue >> 24) & 0xFF,
      green: (hexValue >> 16) & 0xFF,
      blue: (hexValue >> 8) & 0xFF,
      opacity: (hexValue & 0xFF) / 255.0,
    );
  } else {
    return rpColorRGBA(red: (hexValue >> 16) & 0xFF, green: (hexValue >> 8) & 0xFF, blue: hexValue & 0xFF);
  }
}

// MARK: - Common Color Presets

RPColor get rpColorWhite => rpColorRGBA(red: 255, green: 255, blue: 255);
RPColor get rpColorBlack => rpColorRGBA(red: 0, green: 0, blue: 0);
RPColor get rpColorClear => rpColorRGBA(red: 0, green: 0, blue: 0, opacity: 0);
RPColor get rpColorRed => rpColorRGBA(red: 255, green: 59, blue: 48);
RPColor get rpColorOrange => rpColorRGBA(red: 255, green: 149, blue: 0);
RPColor get rpColorYellow => rpColorRGBA(red: 255, green: 204, blue: 0);
RPColor get rpColorGreen => rpColorRGBA(red: 52, green: 199, blue: 89);
RPColor get rpColorBlue => rpColorRGBA(red: 0, green: 122, blue: 255);
RPColor get rpColorPurple => rpColorRGBA(red: 175, green: 82, blue: 222);
RPColor get rpColorPink => rpColorRGBA(red: 255, green: 45, blue: 85);
RPColor get rpColorGray => rpColorRGBA(red: 142, green: 142, blue: 147);
RPColor get rpColorLightGray => rpColorRGBA(red: 209, green: 209, blue: 214);
RPColor get rpColorDarkGray => rpColorRGBA(red: 72, green: 72, blue: 74);
RPColor get rpColorTeal => rpColorRGBA(red: 48, green: 176, blue: 199);

// MARK: - RPColor Instance Extension

extension RPColorExtension on RPColor {
  /// Returns a copy of this color with the specified opacity.
  RPColor withOpacity(double opacity) {
    final color = deepCopy();
    color.opacity = opacity;
    return color;
  }
}
