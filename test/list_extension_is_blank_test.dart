import 'package:test/test.dart';
import 'package:utils/extensions/extensions.dart';

void main() {
  test("isBlank: empty list of integers", () {
    final List<int> list = [];
    const bool expected = true;

    final bool actual = list.isBlank();
    expect(expected, actual);
  });

  test("isBlank: contains one integer item", () {
    final List<int> list = [0];
    const bool expected = false;

    final bool actual = list.isBlank();
    expect(expected, actual);
  });

  test("isBlank: contains multiple integer items", () {
    final List<int> list = [0, 1, 2, 3];
    const bool expected = false;

    final bool actual = list.isBlank();
    expect(expected, actual);
  });

  test("isBlank: empty list of strings", () {
    final List<String> list = [];
    const bool expected = true;

    final bool actual = list.isBlank();
    expect(expected, actual);
  });

  test("isBlank: one item with spaces", () {
    final List<String> list = ["   "];
    const bool expected = true;

    final bool actual = list.isBlank();
    expect(expected, actual);
  });

  test("isBlank: multiple items with spaces", () {
    final List<String> list = ["   ", "   ", "   "];
    const bool expected = true;

    final bool actual = list.isBlank();
    expect(expected, actual);
  });

  test("isBlank:one item with an empty string", () {
    final List<String> list = [""];
    const bool expected = true;

    final bool actual = list.isBlank();
    expect(expected, actual);
  });

  test("isBlank: multiple items with empty strings", () {
    final List<String> list = ["", ""];
    const bool expected = true;

    final bool actual = list.isBlank();
    expect(expected, actual);
  });

  test("isNotBlank: empty list of integers", () {
    final List<int> list = [];
    const bool expected = false;

    final bool actual = list.isNotBlank();
    expect(expected, actual);
  });

  test("isNotBlank: contains one integer item", () {
    final List<int> list = [0];
    const bool expected = true;

    final bool actual = list.isNotBlank();
    expect(expected, actual);
  });

  test("isNotBlank: contains multiple integer items", () {
    final List<int> list = [0, 1, 2, 3];
    const bool expected = true;

    final bool actual = list.isNotBlank();
    expect(expected, actual);
  });

  test("isNotBlank: empty list of strings", () {
    final List<String> list = [];
    const bool expected = false;

    final bool actual = list.isNotBlank();
    expect(expected, actual);
  });

  test("isNotBlank: one item with spaces", () {
    final List<String> list = ["   "];
    const bool expected = false;

    final bool actual = list.isNotBlank();
    expect(expected, actual);
  });

  test("isNotBlank: multiple items with spaces", () {
    final List<String> list = ["   ", "   ", "   "];
    const bool expected = false;

    final bool actual = list.isNotBlank();
    expect(expected, actual);
  });

  test("isNotBlank:one item with an empty string", () {
    final List<String> list = [""];
    const bool expected = false;

    final bool actual = list.isNotBlank();
    expect(expected, actual);
  });

  test("isNotBlank: multiple items with empty strings", () {
    final List<String> list = ["", ""];
    const bool expected = false;

    final bool actual = list.isNotBlank();
    expect(expected, actual);
  });
}
