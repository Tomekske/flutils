// ignore_for_file: unnecessary_cast

import 'package:test/test.dart';
import 'package:utils/extensions.dart';

void main() {
  test("Distance integer", () {
    expect(0.distance(), "0 km");
    expect(1.distance(), "1 km");
    expect(2.distance(), "2 km");
    expect(20.distance(), "20 km");
    expect(200.distance(), "200 km");
    expect(2000.distance(), "2000 km");
    expect(20000.distance(), "20000 km");
  });

  test("Nullable: Distance integer", () {
    expect(null as String?, null);

    expect(0.distance() as String?, "0 km");
    expect(1.distance() as String?, "1 km");
    expect(2.distance() as String?, "2 km");
    expect(20.distance() as String?, "20 km");
    expect(200.distance() as String?, "200 km");
    expect(2000.distance() as String?, "2000 km");
    expect(20000.distance() as String?, "20000 km");
  });
}
