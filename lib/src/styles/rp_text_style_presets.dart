///
/// rp_text_style_presets.dart
/// rp_utils_dart
///
/// Preset text style factories and convenience builders.
///

import 'package:rp_generated_dart/rp_generated_dart.dart';

// MARK: - RPTextStyle Factory

/// Creates a styled RPTextStyle with commonly used parameters.
RPTextStyle rpTextStyle({
  required double fontSize,
  RPFontWeight fontWeight = RPFontWeight.RP_FONT_WEIGHT_REGULAR,
  RPColor? color,
  String? fontFamily,
  RPFontStyle fontStyle = RPFontStyle.RP_FONT_STYLE_UNSPECIFIED,
  double? lineHeight,
  double? letterSpacing,
  RPTextDecoration decoration = RPTextDecoration.RP_TEXT_DECORATION_UNSPECIFIED,
}) {
  final style = RPTextStyle();
  style.fontSize = fontSize;
  style.fontWeight = fontWeight;
  if (color != null) style.color = color;
  if (fontFamily != null) style.fontFamily = fontFamily;
  style.fontStyle = fontStyle;
  if (lineHeight != null) style.lineHeight = lineHeight;
  if (letterSpacing != null) style.letterSpacing = letterSpacing;
  style.decoration = decoration;
  return style;
}

// MARK: - Typography Scale Presets (Material Design-inspired)

/// Large display text (57pt, light weight).
RPTextStyle get rpTextDisplayLarge => rpTextStyle(fontSize: 57, fontWeight: RPFontWeight.RP_FONT_WEIGHT_LIGHT);

/// Medium display text (45pt, regular weight).
RPTextStyle get rpTextDisplayMedium => rpTextStyle(fontSize: 45, fontWeight: RPFontWeight.RP_FONT_WEIGHT_REGULAR);

/// Small display text (36pt, regular weight).
RPTextStyle get rpTextDisplaySmall => rpTextStyle(fontSize: 36, fontWeight: RPFontWeight.RP_FONT_WEIGHT_REGULAR);

/// Large headline text (32pt, regular weight).
RPTextStyle get rpTextHeadlineLarge => rpTextStyle(fontSize: 32, fontWeight: RPFontWeight.RP_FONT_WEIGHT_REGULAR);

/// Medium headline text (28pt, regular weight).
RPTextStyle get rpTextHeadlineMedium => rpTextStyle(fontSize: 28, fontWeight: RPFontWeight.RP_FONT_WEIGHT_REGULAR);

/// Small headline text (24pt, regular weight).
RPTextStyle get rpTextHeadlineSmall => rpTextStyle(fontSize: 24, fontWeight: RPFontWeight.RP_FONT_WEIGHT_REGULAR);

/// Large title text (22pt, regular weight).
RPTextStyle get rpTextTitleLarge => rpTextStyle(fontSize: 22, fontWeight: RPFontWeight.RP_FONT_WEIGHT_REGULAR);

/// Medium title text (16pt, medium weight).
RPTextStyle get rpTextTitleMedium => rpTextStyle(fontSize: 16, fontWeight: RPFontWeight.RP_FONT_WEIGHT_MEDIUM);

/// Small title text (14pt, medium weight).
RPTextStyle get rpTextTitleSmall => rpTextStyle(fontSize: 14, fontWeight: RPFontWeight.RP_FONT_WEIGHT_MEDIUM);

/// Large body text (16pt, regular weight).
RPTextStyle get rpTextBodyLarge => rpTextStyle(fontSize: 16, fontWeight: RPFontWeight.RP_FONT_WEIGHT_REGULAR);

/// Medium body text (14pt, regular weight).
RPTextStyle get rpTextBodyMedium => rpTextStyle(fontSize: 14, fontWeight: RPFontWeight.RP_FONT_WEIGHT_REGULAR);

/// Small body text (12pt, regular weight).
RPTextStyle get rpTextBodySmall => rpTextStyle(fontSize: 12, fontWeight: RPFontWeight.RP_FONT_WEIGHT_REGULAR);

/// Large label text (14pt, medium weight).
RPTextStyle get rpTextLabelLarge => rpTextStyle(fontSize: 14, fontWeight: RPFontWeight.RP_FONT_WEIGHT_MEDIUM);

/// Medium label text (12pt, medium weight).
RPTextStyle get rpTextLabelMedium => rpTextStyle(fontSize: 12, fontWeight: RPFontWeight.RP_FONT_WEIGHT_MEDIUM);

/// Small label text (11pt, medium weight).
RPTextStyle get rpTextLabelSmall => rpTextStyle(fontSize: 11, fontWeight: RPFontWeight.RP_FONT_WEIGHT_MEDIUM);

// MARK: - RPTextStyle Instance Extensions

extension RPTextStyleExtension on RPTextStyle {
  /// Returns a copy with the specified color.
  RPTextStyle withColor(RPColor color) {
    final style = deepCopy();
    style.color = color;
    return style;
  }

  /// Returns a copy with the specified font weight.
  RPTextStyle withWeight(RPFontWeight weight) {
    final style = deepCopy();
    style.fontWeight = weight;
    return style;
  }

  /// Returns a copy with italic font style.
  RPTextStyle get toItalic {
    final style = deepCopy();
    style.fontStyle = RPFontStyle.RP_FONT_STYLE_ITALIC;
    return style;
  }

  /// Returns a copy with underline decoration.
  RPTextStyle get toUnderlined {
    final style = deepCopy();
    style.decoration = RPTextDecoration.RP_TEXT_DECORATION_UNDERLINE;
    return style;
  }

  /// Returns a copy with line-through decoration.
  RPTextStyle get toStrikethrough {
    final style = deepCopy();
    style.decoration = RPTextDecoration.RP_TEXT_DECORATION_LINE_THROUGH;
    return style;
  }

  /// Returns a copy with the specified font family.
  RPTextStyle withFontFamily(String fontFamily) {
    final style = deepCopy();
    style.fontFamily = fontFamily;
    return style;
  }
}
