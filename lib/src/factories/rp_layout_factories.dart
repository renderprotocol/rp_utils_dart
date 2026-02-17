///
/// rp_layout_factories.dart
/// rp_utils_dart
///
/// Factory helpers for layout components.
///

import 'package:fixnum/fixnum.dart';
import 'package:rp_generated_dart/rp_generated_dart.dart';

// MARK: - RPRow Factory

/// Creates an RPRow with children, optional spacing, and alignment.
RPRow rpRow({
  required List<RPWidget> children,
  Int64? spacing,
  RPAxisAlignment alignment = RPAxisAlignment.RP_AXIS_ALIGNMENT_UNSPECIFIED,
}) {
  final row = RPRow();
  row.children.addAll(children);
  if (spacing != null) row.spacing = spacing;
  row.alignment = alignment;
  return row;
}

// MARK: - RPColumn Factory

/// Creates an RPColumn with children, optional spacing, and alignment.
RPColumn rpColumn({
  required List<RPWidget> children,
  Int64? spacing,
  RPAxisAlignment alignment = RPAxisAlignment.RP_AXIS_ALIGNMENT_UNSPECIFIED,
}) {
  final column = RPColumn();
  column.children.addAll(children);
  if (spacing != null) column.spacing = spacing;
  column.alignment = alignment;
  return column;
}

// MARK: - RPStack Factory

/// Creates an RPStack with children and alignment.
RPStack rpStack({required List<RPWidget> children, RPAlignment alignment = RPAlignment.RP_ALIGNMENT_CENTER}) {
  final stack = RPStack();
  stack.children.addAll(children);
  stack.alignment = alignment;
  return stack;
}

// MARK: - RPLazyList Factory

/// Creates an RPLazyList with children, axis, and spacing.
RPLazyList rpLazyList({
  required List<RPWidget> children,
  RPAxis axis = RPAxis.RP_AXIS_VERTICAL,
  double spacing = 0,
  bool showsIndicators = true,
}) {
  final list = RPLazyList();
  list.children.addAll(children);
  list.axis = axis;
  list.spacing = spacing;
  list.showsIndicators = showsIndicators;
  return list;
}

// MARK: - RPLazyGrid Factory (Fixed)

/// Creates a fixed-column lazy grid.
RPLazyGrid rpLazyGridFixed({
  required int columns,
  required List<RPWidget> children,
  double spacing = 0,
  double runSpacing = 0,
}) {
  final layout = RPGridLayout();
  final fixed = RPFixedGrid();
  fixed.count = columns;
  layout.fixed = fixed;
  final grid = RPLazyGrid();
  grid.children.addAll(children);
  grid.layout = layout;
  grid.spacing = spacing;
  grid.runSpacing = runSpacing;
  return grid;
}

// MARK: - RPLazyGrid Factory (Adaptive)

/// Creates an adaptive lazy grid with minimum item width.
RPLazyGrid rpLazyGridAdaptive({
  required double minItemWidth,
  required List<RPWidget> children,
  double spacing = 0,
  double runSpacing = 0,
}) {
  final layout = RPGridLayout();
  final adaptive = RPAdaptiveGrid();
  adaptive.minItemWidth = minItemWidth;
  layout.adaptive = adaptive;
  final grid = RPLazyGrid();
  grid.children.addAll(children);
  grid.layout = layout;
  grid.spacing = spacing;
  grid.runSpacing = runSpacing;
  return grid;
}

// MARK: - RPWrap Factory

/// Creates an RPWrap with children, spacing, and alignment.
RPWrap rpWrap({
  required List<RPWidget> children,
  double spacing = 0,
  double runSpacing = 0,
  RPAlignment alignment = RPAlignment.RP_ALIGNMENT_UNSPECIFIED,
}) {
  final wrap = RPWrap();
  wrap.children.addAll(children);
  wrap.spacing = spacing;
  wrap.runSpacing = runSpacing;
  wrap.alignment = alignment;
  return wrap;
}
