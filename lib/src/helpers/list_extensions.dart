///
/// list_extensions.dart
/// rp_utils_dart
///

// MARK: - List Async Extensions

extension RPListAsyncExtensions<E> on List<E> {
  /// Sequentially maps elements using an async transform function.
  Future<List<T>> asyncMap<T>(Future<T> Function(E element) transform) async {
    final result = <T>[];
    for (final element in this) {
      result.add(await transform(element));
    }
    return result;
  }

  /// Concurrently maps elements using an async transform function.
  /// Preserves original order.
  Future<List<T>> concurrentAsyncMap<T>(Future<T> Function(E element) transform) async {
    final futures = map((element) => transform(element)).toList();
    return Future.wait(futures);
  }
}
