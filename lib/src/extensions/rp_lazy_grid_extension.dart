import 'package:rp_generated_dart/rp_generated_dart.dart';
import 'package:rp_utils_dart/src/rp_utils.dart';

extension RPLazyGridExtension on RPLazyGrid {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.lazyGrid = this;
    return widget;
  }
}
