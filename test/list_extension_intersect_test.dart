import 'package:flutils/extensions.dart';
import 'package:test/test.dart';

void main() {
  test("intersect: list of integers -> [1, 2, 3] ∩ [2, 3] -> [2, 3]", () {
    final List<int> a = [1, 2, 3];
    final List<int> b = [2, 3];

    final List<int> expected = [2, 3];

    a.intersect(b);
    expect(a, expected);
  });

  test("intersect: list of integers -> [1, 2, 3, 4, 5, 6] ∩ [2, 5] -> [2, 5]",
      () {
    final List<int> a = [1, 2, 3, 4, 5, 6];
    final List<int> b = [2, 5];

    final List<int> expected = [2, 5];

    a.intersect(b);
    expect(a, expected);
  });

  test("intersect: list of integers -> [4] ∩ [1, 2, 3, 4, 5, 6] -> [4]", () {
    final List<int> a = [4];
    final List<int> b = [1, 2, 3, 4, 5, 6];

    final List<int> expected = [4];

    a.intersect(b);
    expect(a, expected);
  });

  test("intersect: list of integers -> [2, 4, 12] ∩ [1, 2, 3, 4] -> [2, 4, 12]",
      () {
    final List<int> a = [2, 4, 12];
    final List<int> b = [1, 2, 3, 4];

    final List<int> expected = [2, 4];

    a.intersect(b);
    expect(a, expected);
  });

  test("intersect: list of strings -> [a, b, c] ∩ [b, c] -> [b, c]", () {
    final List<String> a = ["a", "b", "c"];
    final List<String> b = ["b", "c"];

    final List<String> expected = ["b", "c"];

    a.intersect(b);
    expect(a, expected);
  });

  test("intersect: list of strings -> [a, b, c, d, e] ∩ [b, e] -> [b, e]", () {
    final List<String> a = ["a", "b", "c", "d", "e"];
    final List<String> b = ["b", "e"];

    final List<String> expected = ["b", "e"];

    a.intersect(b);
    expect(a, expected);
  });

  test("intersect: list of strings -> [c] ∩ [a, b, c, d, e] -> [c]", () {
    final List<String> a = ["c"];
    final List<String> b = ["a", "b", "c", "d", "e"];

    final List<String> expected = ["c"];

    a.intersect(b);
    expect(a, expected);
  });
}
