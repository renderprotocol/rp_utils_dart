import 'package:rp_generated_dart/rp_generated_dart.dart';
import 'package:rp_utils_dart/src/rp_utils.dart';

extension RPExpandedExtension on RPExpanded {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.expanded = this;
    return widget;
  }
}
