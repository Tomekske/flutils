import 'package:flutils/extensions.dart';
import 'package:test/test.dart';

void main() {
  test("Capitalize text -> generic cases", () {
    const String expected = "Test this beautiful text";

    expect("test this beautiful text".capitalize(), expected);
    expect("Test this beautiful text".capitalize(), expected);
    expect("TEST THIS BEAUTIFUL TEXT".capitalize(), expected);
    expect("Test This Beautiful Text".capitalize(), expected);
    expect("TeSt this BeAUTifUL TExT".capitalize(), expected);
  });

  test("Capitalize text -> special cases", () {
    final String expected = StringExtension.empty();

    expect("  ".capitalize(), expected);
    expect("".capitalize(), expected);
    expect('  '.capitalize(), expected);
    expect(''.capitalize(), expected);
  });
}
