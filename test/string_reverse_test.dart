// ignore_for_file: unnecessary_cast

import 'package:test/test.dart';
import 'package:utils/extensions.dart';

void main() {
  test("Reverse string -> non nullable", () {
    expect("abc".reverse(), "cba");
    expect("ABC".reverse(), "CBA");
    expect("aBc".reverse(), "cBa");
    expect("Reverse this string".reverse(), "gnirts siht esreveR");
    expect(StringExtension.empty().reverse(), StringExtension.empty());
    expect(
        StringExtension.whitespace().reverse(), StringExtension.whitespace());
  });

  test("Reverse string -> nullable", () {
    expect((null as String?).reverse(), null);
    expect(("abc" as String?).reverse(), "cba");
    expect(("ABC" as String?).reverse(), "CBA");
    expect(("aBc" as String?).reverse(), "cBa");
    expect(("abc" as String?).reverse(), "cba");
    expect(("Reverse this string" as String?).reverse(), "gnirts siht esreveR");
    expect((StringExtension.empty() as String?).reverse(),
        StringExtension.empty());
    expect((StringExtension.whitespace() as String?).reverse(),
        StringExtension.whitespace());
  });
}
