import 'package:rp_generated_dart/rp_generated_dart.dart';
import 'package:rp_utils_dart/src/rp_utils.dart';

extension RPVisibilityExtension on RPVisibility {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.visibility = this;
    return widget;
  }
}
