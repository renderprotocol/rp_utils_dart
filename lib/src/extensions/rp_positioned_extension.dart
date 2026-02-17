import 'package:rp_generated_dart/rp_generated_dart.dart';
import 'package:rp_utils_dart/src/rp_utils.dart';

extension RPPositionedExtension on RPPositioned {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.positioned = this;
    return widget;
  }
}
