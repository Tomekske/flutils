import 'package:test/test.dart';
import 'package:utils/extensions/list_extension.dart';

void main() {
  test("print list of integers", () {
    final List<int> list = [1, 10, 50, 55, 8];

    list.printList();
  });

  test("print list of doubles", () {
    final List<double> list = [1.0, 10.5, 50.7, 55.66, 8.88];

    list.printList();
  });

  test("print list of strings", () {
    final List<String> list = ["hey", "I'm", "from", "Belgium"];

    list.printList();
  });
}
