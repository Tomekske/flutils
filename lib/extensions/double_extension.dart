import 'package:utils/extensions/string_extension.dart';

extension DoubleExtension on double {
  /// Divide a double into repeating [groups] separated by a [radix] and [decimal]
  /// Default value of the [decimal] argument is ","
  /// Examples:
  /// 123456.0: group=3, radix=" ", decimal="," -> 123 456.0
  /// 1234.123: group=3, radix=" ", decimal="," -> 1 234,123
  /// 123.456: group=3, radix=" ", decimal="!" -> 123!456
  String separate(int group, String radix, {String decimal = ","}) {
    if (group < 1) {
      throw ArgumentError("$group is less than 1");
    }

    final List<String> split = toString().split(".");
    final String reversed = split.first.reverse();

    final n = StringBuffer();

    for (int i = 0; i < reversed.length; i++) {
      if ((i != 0) && (i % group) == 0) {
        n.write(radix);
      }

      n.write(reversed[i]);
    }

    final String reverse = n.toString().reverse();

    return "$reverse$decimal${split.last}";
  }
}

extension DoubleNullableExtension on double? {
  /// Divide a double into repeating [groups] separated by a [radix] and [decimal]
  /// Default value of the [decimal] argument is ","
  /// Examples:
  /// 123456.0: group=3, radix=" ", decimal="," -> 123 456.0
  /// 1234.123: group=3, radix=" ", decimal="," -> 1 234,123
  /// 123.456: group=3, radix=" ", decimal="!" -> 123!456
  String? separate(int group, String radix, {String decimal = ","}) {
    if (this == null) {
      return null;
    }

    if (group < 1) {
      throw ArgumentError("$group is less than 1");
    }

    final List<String> split = toString().split(".");
    final String reversed = split.first.reverse();

    final n = StringBuffer();

    for (int i = 0; i < reversed.length; i++) {
      if ((i != 0) && (i % group) == 0) {
        n.write(radix);
      }

      n.write(reversed[i]);
    }

    final String reverse = n.toString().reverse();

    return "$reverse$decimal${split.last}";
  }
}
