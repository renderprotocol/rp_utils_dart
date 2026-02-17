///
/// rp_display_factories.dart
/// rp_utils_dart
///
/// Factory helpers for display and input components.
///

import 'package:rp_generated_dart/rp_generated_dart.dart';
import 'package:rp_utils_dart/src/styles/rp_text_style_presets.dart';
import 'package:rp_utils_dart/src/widget/rp_widget_make_widget.dart';

// MARK: - RPText Factories

/// Creates a styled text with a value and style.
RPText rpTextStyled(
  String value, {
  RPTextStyle? style,
  int? maxLines,
  RPTextOverflow overflow = RPTextOverflow.RP_TEXT_OVERFLOW_UNSPECIFIED,
  RPTextAlignment alignment = RPTextAlignment.RP_TEXT_ALIGNMENT_UNSPECIFIED,
}) {
  final text = RPText();
  text.value = value;
  if (style != null) text.style = style;
  if (maxLines != null) text.maxLines = maxLines;
  text.overflow = overflow;
  text.textAlignment = alignment;
  return text;
}

/// Creates a simple text with font size and weight.
RPText rpTextSimple(
  String value, {
  double fontSize = 14,
  RPFontWeight fontWeight = RPFontWeight.RP_FONT_WEIGHT_REGULAR,
  RPColor? color,
}) {
  final style = rpTextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color);
  return rpTextStyled(value, style: style);
}

// MARK: - RPImage Factory

/// Creates an image with URL and optional dimensions.
RPImage rpImageRemote({
  required String url,
  double? width,
  double? height,
  RPContentMode contentMode = RPContentMode.RP_CONTENT_MODE_FIT,
  String? placeholderURL,
  String? altText,
}) {
  final image = RPImage();
  image.url = url;
  if (width != null) image.width = width;
  if (height != null) image.height = height;
  image.contentMode = contentMode;
  if (placeholderURL != null) image.placeholderUrl = placeholderURL;
  if (altText != null) image.altText = altText;
  return image;
}

// MARK: - RPIcon Factory

/// Creates an icon with a name, size, and color.
RPIcon rpIconNamed(String name, {double? size, RPColor? color}) {
  final icon = RPIcon();
  icon.name = name;
  if (size != null) icon.size = size;
  if (color != null) icon.color = color;
  return icon;
}

// MARK: - RPButton Factories

/// Creates a button with a text label.
RPButton rpButtonText(
  String title, {
  required RPAction action,
  RPButtonStyle style = RPButtonStyle.RP_BUTTON_STYLE_PRIMARY,
  bool disabled = false,
}) {
  final text = rpTextSimple(title);
  final button = RPButton();
  button.label = text.makeWidget();
  button.action = action;
  button.style = style;
  button.disabled = disabled;
  return button;
}

/// Creates a button with a custom label widget.
RPButton rpButton({
  required RPWidget label,
  required RPAction action,
  RPButtonStyle style = RPButtonStyle.RP_BUTTON_STYLE_PRIMARY,
  bool disabled = false,
}) {
  final button = RPButton();
  button.label = label;
  button.action = action;
  button.style = style;
  button.disabled = disabled;
  return button;
}

// MARK: - RPSpacer Factory

/// Creates a spacer with a minimum length.
RPSpacer rpSpacer({required double minLength}) {
  final spacer = RPSpacer();
  spacer.minLength = minLength;
  return spacer;
}

// MARK: - RPDivider Factory

/// Creates a divider with optional thickness and color.
RPDivider rpDivider({double? thickness, RPColor? color}) {
  final divider = RPDivider();
  if (thickness != null) divider.thickness = thickness;
  if (color != null) divider.color = color;
  return divider;
}

// MARK: - RPProgressIndicator Factories

/// Creates a circular indeterminate progress indicator.
RPProgressIndicator rpProgressCircular({RPColor? color}) {
  final indicator = RPProgressIndicator();
  indicator.type = RPProgressIndicatorType.RP_PROGRESS_INDICATOR_TYPE_CIRCULAR;
  if (color != null) indicator.color = color;
  return indicator;
}

/// Creates a linear progress indicator with a value (0.0–1.0).
RPProgressIndicator rpProgressLinear({double? value, RPColor? color, RPColor? trackColor}) {
  final indicator = RPProgressIndicator();
  indicator.type = RPProgressIndicatorType.RP_PROGRESS_INDICATOR_TYPE_LINEAR;
  if (value != null) indicator.value = value;
  if (color != null) indicator.color = color;
  if (trackColor != null) indicator.trackColor = trackColor;
  return indicator;
}
