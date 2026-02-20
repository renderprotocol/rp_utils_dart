///
/// rp_widget_modifiers.dart
/// rp_utils_dart
///
/// Fluent modifier chaining extensions for RPWidget.
///

import 'package:rp_generated_dart/rp_generated_dart.dart';
import 'package:rp_utils_dart/src/styles/rp_color_factories.dart';
import 'package:rp_utils_dart/src/widget/rp_widget_make_widget.dart';

// MARK: - RPWidget Modifier Chaining

extension RPWidgetModifiers on RPWidget {
  // MARK: - Padding

  /// Wraps this widget in an RPPadding with uniform padding on all sides.
  RPWidget withPadding(double all) {
    final padding = RPPadding();
    padding.child = this;
    padding.all = all;
    return padding.makeWidget();
  }

  /// Wraps this widget in an RPPadding with symmetric vertical/horizontal padding.
  RPWidget withSymmetricPadding({double vertical = 0, double horizontal = 0}) {
    final sym = RPSymmetricPadding();
    sym.vertical = vertical;
    sym.horizontal = horizontal;
    final padding = RPPadding();
    padding.child = this;
    padding.symmetric = sym;
    return padding.makeWidget();
  }

  /// Wraps this widget in an RPPadding with explicit top/bottom/left/right padding.
  RPWidget withExplicitPadding({double top = 0, double bottom = 0, double left = 0, double right = 0}) {
    final explicit = RPExplicitPadding();
    explicit.top = top;
    explicit.bottom = bottom;
    explicit.left = left;
    explicit.right = right;
    final padding = RPPadding();
    padding.child = this;
    padding.explicit = explicit;
    return padding.makeWidget();
  }

  // MARK: - Background

  /// Wraps this widget in an RPBackground with the given color.
  RPWidget withBackground(RPColor color) {
    final bg = RPBackground();
    bg.child = this;
    bg.color = color;
    return bg.makeWidget();
  }

  /// Wraps this widget in an RPBackground with a color specified by RGBA values.
  RPWidget withBackgroundRGBA({required int red, required int green, required int blue, double opacity = 1.0}) {
    return withBackground(rpColorRGBA(red: red, green: green, blue: blue, opacity: opacity));
  }

  // MARK: - Border

  /// Wraps this widget in an RPBorder.
  RPWidget withBorder({required double width, required RPColor color, double? radius}) {
    final border = RPBorder();
    border.child = this;
    border.width = width;
    border.color = color;
    if (radius != null) border.radius = radius;
    return border.makeWidget();
  }

  // MARK: - Opacity

  /// Wraps this widget in an RPOpacity modifier.
  RPWidget withOpacity(double value) {
    final opacity = RPOpacity();
    opacity.child = this;
    opacity.value = value;
    return opacity.makeWidget();
  }

  // MARK: - Visibility

  /// Wraps this widget in an RPVisibility modifier.
  RPWidget withVisibility(bool visible) {
    final visibility = RPVisibility();
    visibility.child = this;
    visibility.visible = visible;
    return visibility.makeWidget();
  }

  // MARK: - Shadow

  /// Wraps this widget in an RPShadow modifier.
  RPWidget withShadow({RPColor? color, double radius = 4, double offsetX = 0, double offsetY = 2}) {
    final shadow = RPShadow();
    shadow.child = this;
    if (color != null) shadow.color = color;
    shadow.radius = radius;
    shadow.offsetX = offsetX;
    shadow.offsetY = offsetY;
    return shadow.makeWidget();
  }

  // MARK: - Size Box

  /// Wraps this widget in an RPSizeBox with explicit width and/or height.
  RPWidget withSize({double? width, double? height}) {
    final sizeBox = RPSizeBox();
    sizeBox.child = this;
    if (width != null) sizeBox.width = width;
    if (height != null) sizeBox.height = height;
    return sizeBox.makeWidget();
  }

  /// Wraps this widget in an RPSizeBox with min/max constraints.
  RPWidget withConstraints({double? minWidth, double? minHeight, double? maxWidth, double? maxHeight}) {
    final sizeBox = RPSizeBox();
    sizeBox.child = this;
    if (minWidth != null) sizeBox.minWidth = minWidth;
    if (minHeight != null) sizeBox.minHeight = minHeight;
    if (maxWidth != null) sizeBox.maxWidth = maxWidth;
    if (maxHeight != null) sizeBox.maxHeight = maxHeight;
    return sizeBox.makeWidget();
  }

  // MARK: - Center

  /// Wraps this widget in an RPCenter.
  RPWidget centered() {
    final center = RPCenter();
    center.child = this;
    return center.makeWidget();
  }

  // MARK: - Expanded

  /// Wraps this widget in an RPExpanded with optional flex factor.
  RPWidget expanded({int flex = 1}) {
    final expanded = RPExpanded();
    expanded.child = this;
    expanded.flex = flex;
    return expanded.makeWidget();
  }

  // MARK: - Safe Area

  /// Wraps this widget in an RPSafeArea.
  RPWidget withSafeArea({bool top = true, bool bottom = true, bool leading = true, bool trailing = true}) {
    final safeArea = RPSafeArea();
    safeArea.child = this;
    safeArea.top = top;
    safeArea.bottom = bottom;
    safeArea.leading = leading;
    safeArea.trailing = trailing;
    return safeArea.makeWidget();
  }

  // MARK: - Aspect Ratio

  /// Wraps this widget in an RPAspectRatio.
  RPWidget withAspectRatio(double ratio, {RPContentMode contentMode = RPContentMode.RP_CONTENT_MODE_FIT}) {
    final aspectRatio = RPAspectRatio();
    aspectRatio.child = this;
    aspectRatio.ratio = ratio;
    aspectRatio.contentMode = contentMode;
    return aspectRatio.makeWidget();
  }

  // MARK: - Positioned

  /// Wraps this widget in an RPPositioned.
  RPWidget positioned({double? top, double? bottom, double? leading, double? trailing}) {
    final positioned = RPPositioned();
    positioned.child = this;
    if (top != null) positioned.top = top;
    if (bottom != null) positioned.bottom = bottom;
    if (leading != null) positioned.leading = leading;
    if (trailing != null) positioned.trailing = trailing;
    return positioned.makeWidget();
  }

  // MARK: - Clip

  /// Wraps this widget in an RPClip with a rounded rectangle shape.
  RPWidget clipped({required double cornerRadius, RPClipType type = RPClipType.RP_CLIP_TYPE_ANTI_ALIAS}) {
    final shape = RPClipShape();
    final roundedRect = RPShapeRoundedRectangle();
    roundedRect.radius = cornerRadius;
    shape.roundedRectangle = roundedRect;
    final clip = RPClip();
    clip.child = this;
    clip.shape = shape;
    clip.type = type;
    return clip.makeWidget();
  }

  /// Wraps this widget in an RPClip with a circle shape.
  RPWidget clippedCircle({RPClipType type = RPClipType.RP_CLIP_TYPE_ANTI_ALIAS}) {
    final shape = RPClipShape();
    shape.circle = RPShapeCircle();
    final clip = RPClip();
    clip.child = this;
    clip.shape = shape;
    clip.type = type;
    return clip.makeWidget();
  }

  /// Wraps this widget in an RPClip with a capsule shape.
  RPWidget clippedCapsule({RPClipType type = RPClipType.RP_CLIP_TYPE_ANTI_ALIAS}) {
    final shape = RPClipShape();
    shape.capsule = RPShapeCapsule();
    final clip = RPClip();
    clip.child = this;
    clip.shape = shape;
    clip.type = type;
    return clip.makeWidget();
  }

  // MARK: - Gesture Detector

  /// Wraps this widget in an RPGestureDetector with a tap action.
  RPWidget onTap(RPAction action) {
    final detector = RPGestureDetector();
    detector.child = this;
    detector.onTap = action;
    return detector.makeWidget();
  }

  /// Wraps this widget in an RPGestureDetector with a long-press action.
  RPWidget onLongPress(RPAction action) {
    final detector = RPGestureDetector();
    detector.child = this;
    detector.onLongPress = action;
    return detector.makeWidget();
  }

  // MARK: - Scrollable

  /// Wraps this widget in an RPScrollable.
  RPWidget scrollable({RPAxis axis = RPAxis.RP_AXIS_VERTICAL, bool showsIndicators = true}) {
    final scrollable = RPScrollable();
    scrollable.child = this;
    scrollable.axis = axis;
    scrollable.showsIndicators = showsIndicators;
    return scrollable.makeWidget();
  }
}
