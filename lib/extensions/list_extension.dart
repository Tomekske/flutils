extension ListExtension<T> on List<T> {
  /// Print all items of the list
  void printList() {
    for (final item in this) {
      // ignore: avoid_print
      print(item);
    }
  }

  /// Find the intersection of two lists in place
  /// Example: [1, 2, 3] ∩ [2, 3] -> [2, 3]
  void intersect(List<T> b) => removeWhere((item) => !b.contains(item));
}

extension ListExtensionString<T> on List<String> {
  /// Sort a list of Strings alphabetically
  /// Example: ["z", "y", "x"] -> ["x", "y", "z"]
  void alphabetical() => sort((a, b) => a.compareTo(b));
}
