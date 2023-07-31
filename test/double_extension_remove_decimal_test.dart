// ignore_for_file: unnecessary_cast

import 'package:flutils/extensions.dart';
import 'package:test/test.dart';

void main() {
  test("Remove decimal", () {
    expect(1.0.removeDecimal(), "1");
    expect(2.0.removeDecimal(), "2");
    expect(2.456.removeDecimal(), "2");
    expect(20.0.removeDecimal(), "20");
    expect(200.0.removeDecimal(), "200");
    expect(2000.0.removeDecimal(), "2000");
    expect(20000.0.removeDecimal(), "20000");
  });

  test("Nullable: Remove decimal", () {
    expect(null as String?, null);

    expect(1.0.removeDecimal() as String?, "1");
    expect(2.0.removeDecimal() as String?, "2");
    expect(2.456.removeDecimal() as String?, "2");
    expect(20.0.removeDecimal() as String?, "20");
    expect(200.0.removeDecimal() as String?, "200");
    expect(2000.0.removeDecimal() as String?, "2000");
    expect(20000.0.removeDecimal() as String?, "20000");
  });
}
