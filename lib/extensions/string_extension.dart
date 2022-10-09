extension StringExtension on String {
  /// Elegant way to returns an empty string
  /// Examples:
  /// StringExtension.empty() -> ''
  static String empty() => '';

  /// Capitalize the first letter of a word within a string
  /// Examples:
  /// "test this beautiful text" -> "Test this beautiful text"
  /// "Test This Beautiful Text" -> "Test this beautiful text"
  String capitalize() {
    if (isBlank()) {
      return "";
    }

    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  /// Checks wether the string does not contains characters
  /// Examples:
  /// "This is a string" -> false
  /// " This is a string " -> false
  /// "" -> true
  /// "   " -> true
  bool isBlank() => trim().isEmpty;

  /// Checks wether the string contains characters
  /// Examples:
  /// "This is a string" -> true
  /// " This is a string " -> true
  /// "" -> false
  /// "   " -> false
  bool isNotBlank() => !isBlank();
}
