import 'package:rp_generated_dart/rp_generated_dart.dart';
import 'package:rp_utils_dart/src/rp_utils.dart';

extension RPAppBarExtension on RPAppBar {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.appBar = this;
    return widget;
  }
}
