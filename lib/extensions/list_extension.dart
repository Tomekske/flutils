extension ListExtension<T> on List<T> {
  /// Print all items of the list
  /// When [isIndex] is true -> prints out the indexes and value "1. value"
  /// When [isIndex] is false -> prints out the value only "value"
  void printList({bool isIndex = true}) {
    for (int i = 0; i < length; i++) {
      final item = isIndex ? "$i. ${this[i]}" : this[i];

      // ignore: avoid_print
      print(item);
    }

    // ignore: avoid_print
    print("List length: $length");
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
