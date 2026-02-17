import 'package:rp_utils_dart/src/interfaces/rp_portable.dart';
import 'package:uuid/uuid.dart';

class RPUtilsVersion implements RPPortable {
  RPUtilsVersion({required this.major, required this.minor, required this.patch})
    : id = '${major}.${minor}.${patch}+${Uuid().v4()}';

  @override
  final String id;

  final int major;
  final int minor;
  final int patch;

  @override
  Map<String, dynamic> toJson() {
    return {'id': id, 'major': major, 'minor': minor, 'patch': patch};
  }

  @override
  String toString() => '$major.$minor.$patch';
}
