import 'package:rp_generated_dart/rp_generated_dart.dart';
import 'package:rp_utils_dart/rp_utils_dart.dart';

extension RPImageExtension on RPImage {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.image = this;
    return widget;
  }
}
