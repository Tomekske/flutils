import 'package:test/test.dart';
import 'package:utils/extensions/extensions.dart';

void main() {
  test("empty: string is empty -> single quot", () {
    const String expected = '';
    final String actual = StringExtension.empty();

    expect(actual, expected);
  });

  test("empty: string is empty -> double quote", () {
    const String expected = "";
    final String actual = StringExtension.empty();

    expect(actual, expected);
  });
}
