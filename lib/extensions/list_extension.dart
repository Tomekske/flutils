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

  /// Checks wether a list is blank
  /// Examples:
  /// [0, 1, 2, 3] -> false
  /// [] -> true
  bool isBlank() => isEmpty;

  /// Checks wether a list is not blank
  /// Examples:
  /// [0, 1, 2, 3] -> true
  /// [] -> false
  bool isNotBlank() => !isBlank();
}

extension ListExtensionString<T> on List<String> {
  /// Sort a list of Strings alphabetically
  /// Example: ["z", "y", "x"] -> ["x", "y", "z"]
  void alphabetical() => sort((a, b) => a.compareTo(b));

  /// Checks wether a list is blank
  /// Examples:
  /// ["a", "b", "c", "d"] -> false
  /// [" ", " ", " ", " "] -> true
  /// [" "] -> true
  /// ["", "", "", ""] -> true
  /// [""] -> true
  /// [] -> true
  bool isBlank() {
    if (isEmpty) {
      return true;
    }

    return every((element) => element.trim() == "");
  }

  /// Checks wether a list is not blank
  /// Examples:
  /// ["a", "b", "c", "d"] -> true
  /// [" ", " ", " ", " "] -> false
  /// [" "] -> false
  /// ["", "", "", ""] -> false
  /// [""] -> false
  /// [] -> false
  bool isNotBlank() => !isBlank();
}
