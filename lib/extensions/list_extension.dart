extension ListExtension<T> on List<T> {
  /// Print all items of the list
  void printList() {
    for (final item in this) {
      // ignore: avoid_print
      print(item);
    }
  }
}

extension ListExtensionString<T> on List<String> {
  /// Sort the list of Strings alphabetically
  void alphabetical() => sort((a, b) => a.compareTo(b));
}
