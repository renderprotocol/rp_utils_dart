import 'package:rp_generated_dart/rp_generated_dart.dart';
import 'package:rp_utils_dart/rp_utils_dart.dart';

extension RPStackExtension on RPStack {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.stack = this;
    return widget;
  }
}
