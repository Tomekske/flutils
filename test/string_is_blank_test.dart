// ignore_for_file: unnecessary_cast

import 'package:test/test.dart';
import 'package:utils/extensions/string_extension.dart';

void main() {
  test("isBlank: false", () {
    const bool expected = false;

    expect("this string is not empty".isBlank(), expected);
    expect("  this string is not blank  ".isBlank(), expected);
    expect("this string is not empty    ".isBlank(), expected);
    expect("    this string is not empty".isBlank(), expected);
  });

  test("isBlank: true", () {
    const bool expected = true;

    expect("".isBlank(), expected);
    expect("     ".isBlank(), expected);
    expect(''.isBlank(), expected);
    expect('     '.isBlank(), expected);
  });

  test("isNotBlank: true", () {
    const bool expected = true;

    expect("this string is not empty".isNotBlank(), expected);
    expect("  this string is not blank  ".isNotBlank(), expected);
    expect("this string is not empty    ".isNotBlank(), expected);
    expect("    this string is not empty".isNotBlank(), expected);
  });

  test("isBlank: false", () {
    const bool expected = false;

    expect("".isNotBlank(), expected);
    expect("     ".isNotBlank(), expected);
    expect(''.isNotBlank(), expected);
    expect('     '.isNotBlank(), expected);
  });

  test("isBlank nullable: true", () {
    const bool expected = true;

    expect((null as String?).isBlank(), expected);
    expect(("" as String?).isBlank(), expected);
    expect(("     " as String?).isBlank(), expected);
    expect(('' as String?).isBlank(), expected);
    expect(('     ' as String?).isBlank(), expected);
  });

  test("isBlank nullable: false", () {
    const bool expected = false;

    expect(("this string is not empty" as String?).isBlank(), expected);
    expect(("  this string is not blank  " as String?).isBlank(), expected);
    expect(("this string is not empty    " as String?).isBlank(), expected);
    expect(("    this string is not empty" as String?).isBlank(), expected);
  });

  test("isNotBlank nullable: false", () {
    const bool expected = false;

    expect((null as String?).isNotBlank(), expected);
    expect(("" as String?).isNotBlank(), expected);
    expect(("     " as String?).isNotBlank(), expected);
    expect(('' as String?).isNotBlank(), expected);
    expect(('     ' as String?).isNotBlank(), expected);
  });

  test("isNotBlank nullable: true", () {
    const bool expected = true;

    expect(("this string is not empty" as String?).isNotBlank(), expected);
    expect(("  this string is not blank  " as String?).isNotBlank(), expected);
    expect(("this string is not empty    " as String?).isNotBlank(), expected);
    expect(("    this string is not empty" as String?).isNotBlank(), expected);
  });
}
