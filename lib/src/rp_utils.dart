import 'package:rp_generated_dart/rp_generated_dart.dart';
import 'package:rp_utils_dart/src/rp_utils_version.dart';
import 'package:uuid/uuid.dart';

abstract class RPUtils {
  static RPUtilsVersion utilsVersion() {
    final int major = 0;
    final int minor = 0;
    final int patch = 1;
    return .new(major: major, minor: minor, patch: patch);
  }

  static RPWidget makeWidgetWithID({String? id}) {
    final widget = RPWidget();
    widget.id = id ?? Uuid().v1();
    return widget;
  }
}
