import 'package:rp_generated_dart/rp_generated_dart.dart';
import 'package:rp_utils_dart/src/rp_utils.dart';

extension RPProgressIndicatorExtension on RPProgressIndicator {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.progressIndicator = this;
    return widget;
  }
}
