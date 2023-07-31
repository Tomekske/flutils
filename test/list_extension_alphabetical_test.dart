import 'package:flutils/extensions.dart';
import 'package:test/test.dart';

void main() {
  test("alphabetical: lower case", () {
    final List<String> list = ["zzz", "bbb", "rrr", "aaa"];
    final List<String> expected = ["aaa", "bbb", "rrr", "zzz"];
    list.alphabetical();

    expect(list, expected);
  });

  test("alphabetical: upper case", () {
    final List<String> list = ["ZZZ", "BBB", "RRR", "AAA"];
    final List<String> expected = ["AAA", "BBB", "RRR", "ZZZ"];
    list.alphabetical();

    expect(list, expected);
  });

  test("alphabetical: mixed case", () {
    final List<String> list = [
      "zzz",
      "bbb",
      "rrr",
      "aaa",
      "ZZZ",
      "BBB",
      "RRR",
      "AAA"
    ];
    final List<String> expected = [
      "AAA",
      "BBB",
      "RRR",
      "ZZZ",
      "aaa",
      "bbb",
      "rrr",
      "zzz",
    ];
    list.alphabetical();

    expect(list, expected);
  });

  test("alphabetical: lower case words", () {
    final List<String> list = ["hello", "dog", "art", "zorro"];
    final List<String> expected = ["art", "dog", "hello", "zorro"];
    list.alphabetical();

    expect(list, expected);
  });

  test("alphabetical: upper case words", () {
    final List<String> list = ["HELLO", "DOG", "ART", "ZORRO"];
    final List<String> expected = ["ART", "DOG", "HELLO", "ZORRO"];
    list.alphabetical();

    expect(list, expected);
  });

  test("alphabetical: mixed case words", () {
    final List<String> list = ["hElLO", "Dog", "aRt", "ZOrRO"];
    final List<String> expected = ["Dog", "ZOrRO", "aRt", "hElLO"];
    list.alphabetical();

    expect(list, expected);
  });
}
