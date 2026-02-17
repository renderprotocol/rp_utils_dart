import 'package:rp_generated_dart/rp_generated_dart.dart';
import 'package:rp_utils_dart/src/rp_utils.dart';

extension RPToggleExtension on RPToggle {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.toggle = this;
    return widget;
  }
}
