extension StringExtension on String {
  /// Elegant way to return an empty string
  /// Examples:
  /// StringExtension.empty() -> ''
  static String empty() => '';

  /// Elegant way to return a whitespace
  /// Examples:
  /// StringExtension.whitespace() -> ' '
  static String whitespace() => ' ';

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

  /// Reverse the string order
  /// Examples:
  /// "abc" -> "cba"
  /// "ABC" -> "CBA"
  /// "aBc" -> "cBA"
  /// "Reverse this string" -> "gnirts siht esreveR"
  /// "" -> ""
  /// " " -> " "
  String reverse() => String.fromCharCodes(codeUnits.reversed);
}

extension StringNullableExtension on String? {
  /// Checks wether a string is null or does not contains characters
  /// Examples:
  /// null -> true
  /// "This is a string" -> false
  /// " This is a string " -> false
  /// "" -> true
  /// "   " -> true
  bool isBlank() {
    if (this == null) {
      return true;
    }

    return this!.trim().isEmpty;
  }

  /// Checks wether a string is not null or contains characters
  /// Examples:
  /// null -> false
  /// "This is a string" -> true
  /// " This is a string " -> true
  /// "" -> false
  /// "   " -> false
  bool isNotBlank() => !isBlank();

  /// Reverse the string order
  /// Examples:
  /// null -> null
  /// "abc" -> "cba"
  /// "ABC" -> "CBA"
  /// "aBc" -> "cBA"
  /// "Reverse this string" -> "gnirts siht esreveR"
  /// "" -> ""
  /// " " -> " "
  String? reverse() {
    if (this == null) {
      return null;
    }

    return String.fromCharCodes(this!.codeUnits.reversed);
  }
}
