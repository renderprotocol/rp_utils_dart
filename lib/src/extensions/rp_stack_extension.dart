import 'package:rp_generated_dart/rp_generated_dart.dart';
import 'package:rp_utils_dart/src/rp_utils.dart';

extension RPStackExtension on RPStack {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.stack = this;
    return widget;
  }
}
