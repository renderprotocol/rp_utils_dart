import 'package:rp_generated_dart/rp_generated_dart.dart';
import 'package:rp_utils_dart/src/rp_utils.dart';

extension RPScaffoldExtension on RPScaffold {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.scaffold = this;
    return widget;
  }
}
