// ignore_for_file: unnecessary_cast

import 'package:test/test.dart';
import 'package:utils/extensions.dart';

void main() {
  test("Distance integer", () {
    expect(0.8.distance(), "800 m");
    expect(0.879.distance(), "879 m");
    expect(1.0.distance(), "1 km");
    expect(2.0.distance(), "2 km");
    expect(2.456.distance(), "2.456 km");
    expect(20.0.distance(), "20 km");
    expect(200.0.distance(), "200 km");
    expect(2000.0.distance(), "2000 km");
    expect(20000.0.distance(), "20000 km");
    expect(24567.123.distance(), "24567.123 km");
  });

  test("Separate nullable integer", () {
    expect(null as String?, null);

    expect(1.0.distance() as String?, "1 km");
    expect(2.0.distance() as String?, "2 km");
    expect(20.0.distance() as String?, "20 km");
    expect(200.0.distance() as String?, "200 km");
    expect(2000.0.distance() as String?, "2000 km");
    expect(20000.0.distance() as String?, "20000 km");
  });
}
