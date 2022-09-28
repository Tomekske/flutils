extension StringExtension on String {
  /// Capitalize the first letter of a word within a string
  /// Examples:
  /// test this beautiful text -> Test this beautiful text
  /// Test This Beautiful Text -> Test this beautiful text
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
