import 'package:utils/extensions/string_extension.dart';

extension IntExtension on int {
  /// Divide an integer into repeating [groups] separated by a [radix]
  /// Examples:
  /// 123456: group=3, radix=" " -> 123 456
  /// 1234: group=3, radix=" " -> 1 234
  /// 123: group=3, radix=" " -> 123
  String separate(int group, String radix) {
    if (group < 1) {
      throw ArgumentError("$group is less than 1");
    }

    final String reversed = toString().reverse();
    final n = StringBuffer();

    for (int i = 0; i < reversed.length; i++) {
      if ((i != 0) && (i % group) == 0) {
        n.write(radix);
      }

      n.write(reversed[i]);
    }

    return n.toString().reverse();
  }

  /// Prints the distance in kilometers
  /// Examples:
  /// 1: 1 km
  /// 20: 20 km
  /// 2000: 200 km
  String distance() => "$this km";
}

extension IntNullableExtension on int? {
  /// Divide an integer into repeating [groups] separated by a [radix]
  /// Examples:
  /// 123456: group=3, radix=" " -> 123 456
  /// 1234: group=3, radix=" " -> 1 234
  /// 123: group=3, radix=" " -> 123
  String? separate(int group, String radix) {
    if (this == null) {
      return null;
    }

    if (group < 1) {
      throw ArgumentError("$group is less than 1");
    }

    final String reversed = toString().reverse();
    final n = StringBuffer();

    for (int i = 0; i < reversed.length; i++) {
      if ((i != 0) && (i % group) == 0) {
        n.write(radix);
      }

      n.write(reversed[i]);
    }

    return n.toString().reverse();
  }

  /// Prints the distance in kilometers
  /// Examples:
  /// 1: 1 km
  /// 20: 20 km
  /// 2000: 200 km
  String? distance() {
    if (this == null) {
      return null;
    }

    return "$this km";
  }
}
