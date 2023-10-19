import 'dart:io';

import 'package:flutils/extensions.dart';
import 'package:test/test.dart';

void main() {
  group("Extension", () {
    test("File has extension", () {
      final file = File("M:\\Test\\test.jpg");
      expect(file.getExtension(), "jpg");
    });

    test("File has invalid extension", () {
      final file = File("M:\\Test\\test^jpg");
      expect(file.getExtension(), null);
    });

    test("File has no extension", () {
      final file = File("M:\\Test\\test");
      expect(file.getExtension(), null);
    });
  });
}
