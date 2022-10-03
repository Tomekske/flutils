import 'package:test/test.dart';
import 'package:utils/extensions/string_extension.dart';

void main() {
  test("isBlank: string contains text", () {
    const String text = "this string is not empty";

    const bool expected = false;
    final bool actual = text.isBlank();

    expect(actual, expected);
  });

  test("isBlank: string does not contain text", () {
    const String text = "";

    const bool expected = true;
    final bool actual = text.isBlank();

    expect(actual, expected);
  });

  test("isBlank: string contains only white spaces", () {
    const String text = "      ";

    const bool expected = true;
    final bool actual = text.isBlank();

    expect(actual, expected);
  });

  test("isBlank: string contains text and white spaces", () {
    const String text = "   this string is not blank   ";

    const bool expected = false;
    final bool actual = text.isBlank();

    expect(actual, expected);
  });

  test("isNotBlank: string contains text", () {
    const String text = "this string is not empty";

    const bool expected = true;
    final bool actual = text.isNotBlank();

    expect(actual, expected);
  });

  test("isNotBlank: string does not contain text", () {
    const String text = "";

    const bool expected = false;
    final bool actual = text.isNotBlank();

    expect(actual, expected);
  });

  test("isNotBlank: string contains only white spaces", () {
    const String text = "      ";

    const bool expected = false;
    final bool actual = text.isNotBlank();

    expect(actual, expected);
  });

  test("isNotBlank: string contains text and white spaces", () {
    const String text = "   this string is not blank   ";

    const bool expected = true;
    final bool actual = text.isNotBlank();

    expect(actual, expected);
  });
}
