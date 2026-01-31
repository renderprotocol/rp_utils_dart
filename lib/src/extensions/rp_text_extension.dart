import 'package:rp_generated_dart/rp_generated_dart.dart';
import 'package:rp_utils_dart/rp_utils_dart.dart';

extension RPTextExtension on RPText {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.text = this;
    return widget;
  }
}
