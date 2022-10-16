import 'package:test/test.dart';
import 'package:utils/extensions.dart';

void main() {
  test("empty: string is empty", () {
    final String actual = StringExtension.empty();

    expect(actual, '');
    expect(actual, "");
  });
}
