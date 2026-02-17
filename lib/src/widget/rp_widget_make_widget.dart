///
/// rp_widget_make_widget.dart
/// rp_utils_dart
///
/// Consolidated makeWidget() extensions for all component types.
/// Each extension converts a component into an RPWidget by assigning
/// itself to the appropriate content slot.
///

import 'package:rp_generated_dart/rp_generated_dart.dart';
import 'package:rp_utils_dart/src/rp_utils.dart';

// MARK: - Layout

extension RPRowMakeWidget on RPRow {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.row = this;
    return widget;
  }
}

extension RPColumnMakeWidget on RPColumn {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.column = this;
    return widget;
  }
}

extension RPStackMakeWidget on RPStack {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.stack = this;
    return widget;
  }
}

extension RPScrollViewMakeWidget on RPScrollView {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.scrollView = this;
    return widget;
  }
}

extension RPLazyListMakeWidget on RPLazyList {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.lazyList = this;
    return widget;
  }
}

extension RPLazyGridMakeWidget on RPLazyGrid {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.lazyGrid = this;
    return widget;
  }
}

extension RPWrapMakeWidget on RPWrap {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.wrap = this;
    return widget;
  }
}

extension RPCenterMakeWidget on RPCenter {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.center = this;
    return widget;
  }
}

extension RPExpandedMakeWidget on RPExpanded {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.expanded = this;
    return widget;
  }
}

// MARK: - Modifiers

extension RPPaddingMakeWidget on RPPadding {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.padding = this;
    return widget;
  }
}

extension RPBackgroundMakeWidget on RPBackground {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.background = this;
    return widget;
  }
}

extension RPBorderMakeWidget on RPBorder {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.border = this;
    return widget;
  }
}

extension RPClipMakeWidget on RPClip {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.clip = this;
    return widget;
  }
}

extension RPOpacityMakeWidget on RPOpacity {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.opacity = this;
    return widget;
  }
}

extension RPVisibilityMakeWidget on RPVisibility {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.visibility = this;
    return widget;
  }
}

extension RPShadowMakeWidget on RPShadow {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.shadow = this;
    return widget;
  }
}

extension RPSizeBoxMakeWidget on RPSizeBox {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.sizeBox = this;
    return widget;
  }
}

extension RPSafeAreaMakeWidget on RPSafeArea {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.safeArea = this;
    return widget;
  }
}

extension RPAspectRatioMakeWidget on RPAspectRatio {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.aspectRatio = this;
    return widget;
  }
}

extension RPPositionedMakeWidget on RPPositioned {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.positioned = this;
    return widget;
  }
}

// MARK: - Display

extension RPTextMakeWidget on RPText {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.text = this;
    return widget;
  }
}

extension RPImageMakeWidget on RPImage {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.image = this;
    return widget;
  }
}

extension RPIconMakeWidget on RPIcon {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.icon = this;
    return widget;
  }
}

extension RPSpacerMakeWidget on RPSpacer {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.spacer = this;
    return widget;
  }
}

extension RPDividerMakeWidget on RPDivider {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.divider = this;
    return widget;
  }
}

extension RPProgressIndicatorMakeWidget on RPProgressIndicator {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.progressIndicator = this;
    return widget;
  }
}

extension RPButtonMakeWidget on RPButton {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.button = this;
    return widget;
  }
}

// MARK: - Input

extension RPTextFieldMakeWidget on RPTextField {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.textField = this;
    return widget;
  }
}

extension RPToggleMakeWidget on RPToggle {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.toggle = this;
    return widget;
  }
}

extension RPSliderMakeWidget on RPSlider {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.slider = this;
    return widget;
  }
}

// MARK: - Composite

extension RPCardMakeWidget on RPCard {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.card = this;
    return widget;
  }
}

extension RPListTileMakeWidget on RPListTile {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.listTile = this;
    return widget;
  }
}

extension RPAppBarMakeWidget on RPAppBar {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.appBar = this;
    return widget;
  }
}

extension RPBottomNavBarMakeWidget on RPBottomNavBar {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.bottomNavBar = this;
    return widget;
  }
}

extension RPBadgeMakeWidget on RPBadge {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.badge = this;
    return widget;
  }
}

extension RPScaffoldMakeWidget on RPScaffold {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.scaffold = this;
    return widget;
  }
}

// MARK: - Interactive

extension RPGestureDetectorMakeWidget on RPGestureDetector {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.gestureDetector = this;
    return widget;
  }
}
