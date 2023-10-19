import 'dart:io';

extension FileExtension on File {
  /// Returns the file extension.
  /// Example: "M:\\Test\\test.jpg" returns "jpg".
  String? getExtension() {
    const period = '.';

    if (!path.contains(period)) {
      return null;
    }

    final tokens = path.split(period);

    if (tokens.isEmpty) {
      return null;
    }

    return tokens.last;
  }
}
