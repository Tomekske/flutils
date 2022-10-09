import 'package:test/test.dart';
import 'package:utils/extensions/extensions.dart';

void main() {
  test("removeBlankItems: empty list of strings", () {
    final List<String> actual = [];
    const List<String> expected = [];

    actual.removeBlankItems();
    expect(expected, actual);
  });

  test("removeBlankItems: one item with spaces", () {
    final List<String> actual = ["   "];
    const List<String> expected = [];

    actual.removeBlankItems();
    expect(expected, actual);
  });

  test("removeBlankItems: multiple items with spaces", () {
    final List<String> actual = ["   ", "   ", "   "];
    const List<String> expected = [];

    actual.removeBlankItems();
    expect(expected, actual);
  });

  test("removeBlankItems:one item with an empty string", () {
    final List<String> actual = [""];
    const List<String> expected = [];

    actual.removeBlankItems();
    expect(expected, actual);
  });

  test("removeBlankItems: multiple items with empty strings", () {
    final List<String> actual = ["", ""];
    const List<String> expected = [];

    actual.removeBlankItems();
    expect(expected, actual);
  });

  test("removeBlankItems: does not remove items", () {
    final List<String> actual = ["a", "b"];
    const List<String> expected = ["a", "b"];

    actual.removeBlankItems();
    expect(expected, actual);
  });

  test("removeBlankItems: removes one whitespace", () {
    final List<String> actual = ["a", " ", "b"];
    const List<String> expected = ["a", "b"];

    actual.removeBlankItems();
    expect(expected, actual);
  });

  test("removeBlankItems: removes multiple whitespaces", () {
    final List<String> actual = ["a", " ", " ", "   ", "b"];
    const List<String> expected = ["a", "b"];

    actual.removeBlankItems();
    expect(expected, actual);
  });

  test("removeBlankItems: removes one empty string", () {
    final List<String> actual = ["a", "", "b"];
    const List<String> expected = ["a", "b"];

    actual.removeBlankItems();
    expect(expected, actual);
  });

  test("removeBlankItems: removes multiple empty strings", () {
    final List<String> actual = ["a", "", "", "", "b"];
    const List<String> expected = ["a", "b"];

    actual.removeBlankItems();
    expect(expected, actual);
  });
}
