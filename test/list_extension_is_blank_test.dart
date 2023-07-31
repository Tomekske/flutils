// ignore_for_file: unnecessary_cast

import 'package:flutils/extensions.dart';
import 'package:test/test.dart';

void main() {
  test("isBlank: true", () {
    const bool expected = true;

    expect(<int>[].isBlank(), expected);
    expect(<String>["   "].isBlank(), expected);
    expect(<String>["  ", "  ", "  "].isBlank(), expected);
    expect(<String>[""].isBlank(), expected);
    expect(<String>["", "", ""].isBlank(), expected);
    expect(<String>[].isBlank(), expected);
  });

  test("isBlank: false", () {
    const bool expected = false;

    expect(<int>[0].isBlank(), expected);
    expect(<int>[0, 1, 2, 3].isBlank(), expected);
    expect(<String>["a"].isBlank(), expected);
    expect(<String>["a", "b", "c"].isBlank(), expected);
  });

  test("isNotBlank: false", () {
    const bool expected = false;

    expect(<int>[].isNotBlank(), expected);
    expect(<String>["   "].isNotBlank(), expected);
    expect(<String>["  ", "  ", "  "].isNotBlank(), expected);
    expect(<String>[""].isNotBlank(), expected);
    expect(<String>["", "", ""].isNotBlank(), expected);
    expect(<String>[].isNotBlank(), expected);
  });

  test("isNotBlank: true", () {
    const bool expected = true;

    expect(<int>[0].isNotBlank(), expected);
    expect(<int>[0, 1, 2, 3].isNotBlank(), expected);
    expect(<String>["a"].isNotBlank(), expected);
    expect(<String>["a", "b", "c"].isNotBlank(), expected);
  });

  test("isBlank nullable: true", () {
    const bool expected = true;

    expect((null as List<int>?).isBlank(), expected);
    expect((<int>[] as List<int>?).isBlank(), expected);
    expect((<String>["   "] as List<String>?).isBlank(), expected);
    expect((<String>["  ", "  ", "  "] as List<String>?).isBlank(), expected);
    expect((<String>[""] as List<String>?).isBlank(), expected);
    expect((<String>["", "", ""] as List<String>?).isBlank(), expected);
    expect((<String>[] as List<String>?).isBlank(), expected);
  });

  test("isBlank nullable: false", () {
    const bool expected = false;

    expect((<int>[0] as List<int>?).isBlank(), expected);
    expect((<int>[0, 1, 2, 3] as List<int>?).isBlank(), expected);
    expect((<String>["a"] as List<String>?).isBlank(), expected);
    expect((<String>["a", "b", "c"] as List<String>?).isBlank(), expected);
  });

  test("isNotBlank nullable: false", () {
    const bool expected = false;

    expect((null as List<int>?).isNotBlank(), expected);
    expect((<int>[] as List<int>?).isNotBlank(), expected);
    expect((<String>["   "] as List<String>?).isNotBlank(), expected);
    expect(
        (<String>["  ", "  ", "  "] as List<String>?).isNotBlank(), expected);
    expect((<String>[""] as List<String>?).isNotBlank(), expected);
    expect((<String>["", "", ""] as List<String>?).isNotBlank(), expected);
    expect((<String>[] as List<String>?).isNotBlank(), expected);
  });

  test("isNotBlank nullable: true", () {
    const bool expected = true;

    expect((<int>[0] as List<int>?).isNotBlank(), expected);
    expect((<int>[0, 1, 2, 3] as List<int>?).isNotBlank(), expected);
    expect((<String>["a"] as List<String>?).isNotBlank(), expected);
    expect((<String>["a", "b", "c"] as List<String>?).isNotBlank(), expected);
  });
}
