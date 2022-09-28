import 'package:test/test.dart';
import 'package:utils/extensions/string_extension.dart';

void main() {
  test("all lower case: test this beautiful text", () {
    const String text = "test this beautiful text";

    const String expected = "Test this beautiful text";
    final String actual = text.capitalize();

    expect(actual, expected);
  });

  test("all upper case: TEST THIS BEAUTIFUL TEXT", () {
    const String text = "TEST THIS BEAUTIFUL TEXT";

    const String expected = "Test this beautiful text";
    final String actual = text.capitalize();

    expect(actual, expected);
  });

  test("first word upper case: Test this beautiful text", () {
    const String text = "Test this beautiful text";

    const String expected = "Test this beautiful text";
    final String actual = text.capitalize();

    expect(actual, expected);
  });

  test("every word upper case: Test This Beautiful Text", () {
    const String text = "Test This Beautiful Text";

    const String expected = "Test this beautiful text";
    final String actual = text.capitalize();

    expect(actual, expected);
  });

  test("mixed case: TeSt this BeAUTifUL TExT", () {
    const String text = "TeSt this BeAUTifUL TExT";

    const String expected = "Test this beautiful text";
    final String actual = text.capitalize();

    expect(actual, expected);
  });
}
