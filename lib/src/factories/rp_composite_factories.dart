///
/// rp_composite_factories.dart
/// rp_utils_dart
///
/// Factory helpers for composite components.
///

import 'package:rp_generated_dart/rp_generated_dart.dart';
import 'package:rp_utils_dart/src/widget/rp_widget_make_widget.dart';

// MARK: - RPScaffold Factory

/// Creates a scaffold with an app bar, body, and optional bottom nav bar.
RPScaffold rpScaffold({
  RPAppBar? appBar,
  required RPWidget body,
  RPBottomNavBar? bottomNavBar,
  RPColor? backgroundColor,
}) {
  final scaffold = RPScaffold();
  if (appBar != null) scaffold.appBar = appBar;
  scaffold.body = body;
  if (bottomNavBar != null) scaffold.bottomNavBar = bottomNavBar;
  if (backgroundColor != null) scaffold.backgroundColor = backgroundColor;
  return scaffold;
}

// MARK: - RPCard Factory

/// Creates a card with a child, optional elevation, corner radius, background color, and padding.
RPCard rpCard({
  required RPWidget child,
  double? elevation,
  double? cornerRadius,
  RPColor? backgroundColor,
  RPEdgeInsets? padding,
}) {
  final card = RPCard();
  card.child = child;
  if (elevation != null) card.elevation = elevation;
  if (cornerRadius != null) card.cornerRadius = cornerRadius;
  if (backgroundColor != null) card.backgroundColor = backgroundColor;
  if (padding != null) card.padding = padding;
  return card;
}

// MARK: - RPListTile Factory

/// Creates a list tile with title, optional subtitle, leading/trailing widgets, and tap action.
RPListTile rpListTile({
  required RPWidget title,
  RPWidget? subtitle,
  RPWidget? leading,
  RPWidget? trailing,
  RPAction? onTap,
}) {
  final tile = RPListTile();
  tile.title = title;
  if (subtitle != null) tile.subtitle = subtitle;
  if (leading != null) tile.leading = leading;
  if (trailing != null) tile.trailing = trailing;
  if (onTap != null) tile.onTap = onTap;
  return tile;
}

// MARK: - RPAppBar Factories

/// Creates an app bar with a title, optional leading widget, actions, and background color.
RPAppBar rpAppBar({
  required RPWidget title,
  RPWidget? leading,
  List<RPWidget> actions = const [],
  RPColor? backgroundColor,
}) {
  final appBar = RPAppBar();
  appBar.title = title;
  if (leading != null) appBar.leading = leading;
  appBar.actions.addAll(actions);
  if (backgroundColor != null) appBar.backgroundColor = backgroundColor;
  return appBar;
}

/// Creates an app bar with a text title.
RPAppBar rpAppBarTitled(
  String title, {
  RPTextStyle? style,
  RPWidget? leading,
  List<RPWidget> actions = const [],
  RPColor? backgroundColor,
}) {
  final text = RPText();
  text.value = title;
  if (style != null) text.style = style;

  return rpAppBar(title: text.makeWidget(), leading: leading, actions: actions, backgroundColor: backgroundColor);
}

// MARK: - RPBadge Factory

/// Creates a badge with a child widget, value, and color.
RPBadge rpBadge({required RPWidget child, String? value, RPColor? color}) {
  final badge = RPBadge();
  badge.child = child;
  if (value != null) badge.value = value;
  if (color != null) badge.color = color;
  return badge;
}

// MARK: - RPBottomNavBar Factory

/// Creates a bottom navigation bar from items.
RPBottomNavBar rpBottomNavBar({
  required List<RPBottomNavItem> items,
  int selectedIndex = 0,
  RPColor? backgroundColor,
  RPColor? selectedColor,
  RPColor? unselectedColor,
}) {
  final navBar = RPBottomNavBar();
  navBar.items.addAll(items);
  navBar.selectedIndex = selectedIndex;
  if (backgroundColor != null) navBar.backgroundColor = backgroundColor;
  if (selectedColor != null) navBar.selectedColor = selectedColor;
  if (unselectedColor != null) navBar.unselectedColor = unselectedColor;
  return navBar;
}

// MARK: - RPBottomNavItem Factory

/// Creates a bottom navigation item.
RPBottomNavItem rpBottomNavItem({required RPIcon icon, String? label, RPAction? action}) {
  final item = RPBottomNavItem();
  item.icon = icon;
  if (label != null) item.label = label;
  if (action != null) item.action = action;
  return item;
}

// MARK: - RPEdgeInsets Factories

/// Creates edge insets with uniform value on all sides.
RPEdgeInsets rpEdgeInsetsAll(double value) {
  final insets = RPEdgeInsets();
  insets.top = value;
  insets.bottom = value;
  insets.leading = value;
  insets.trailing = value;
  return insets;
}

/// Creates edge insets with symmetric vertical/horizontal values.
RPEdgeInsets rpEdgeInsetsSymmetric({double vertical = 0, double horizontal = 0}) {
  final insets = RPEdgeInsets();
  insets.top = vertical;
  insets.bottom = vertical;
  insets.leading = horizontal;
  insets.trailing = horizontal;
  return insets;
}

/// Creates edge insets with explicit values for each edge.
RPEdgeInsets rpEdgeInsetsOnly({double top = 0, double bottom = 0, double leading = 0, double trailing = 0}) {
  final insets = RPEdgeInsets();
  insets.top = top;
  insets.bottom = bottom;
  insets.leading = leading;
  insets.trailing = trailing;
  return insets;
}
