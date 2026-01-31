import 'package:rp_generated_dart/rp_generated_dart.dart';
import 'package:rp_utils_dart/rp_utils_dart.dart';

extension RPRowExtension on RPRow {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.row = this;
    return widget;
  }
}
