import 'package:flutils/extensions.dart';
import 'package:test/test.dart';

void main() {
  test("empty: string is empty", () {
    final String actual = StringExtension.empty();

    expect(actual, '');
    expect(actual, "");
  });
}
