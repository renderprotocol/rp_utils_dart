import 'package:rp_generated_dart/rp_generated_dart.dart';
import 'package:rp_utils_dart/src/rp_utils.dart';

extension RPSliderExtension on RPSlider {
  RPWidget makeWidget() {
    final widget = RPUtils.makeWidgetWithID();
    widget.slider = this;
    return widget;
  }
}
