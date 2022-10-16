import 'package:test/test.dart';
import 'package:utils/extensions.dart';

void main() {
  test("print list of integers -> index = true", () {
    final List<int> list = [1, 10, 50, 55, 8];

    list.printList();
  });

  test("print list of doubles -> index = true", () {
    final List<double> list = [1.0, 10.5, 50.7, 55.66, 8.88];

    list.printList();
  });

  test("print list of strings -> index = true", () {
    final List<String> list = ["hey", "I'm", "from", "Belgium"];

    list.printList();
  });

  test("print list of integers -> index = false", () {
    final List<int> list = [1, 10, 50, 55, 8];

    list.printList(isIndex: false);
  });

  test("print list of doubles -> index = false", () {
    final List<double> list = [1.0, 10.5, 50.7, 55.66, 8.88];

    list.printList(isIndex: false);
  });

  test("print list of strings -> index = false", () {
    final List<String> list = ["hey", "I'm", "from", "Belgium"];

    list.printList(isIndex: false);
  });
}
