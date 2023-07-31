// ignore_for_file: unnecessary_cast

import 'package:flutils/extensions.dart';
import 'package:test/test.dart';

void main() {
  test("Separate integer", () {
    expect(2.separate(1, " "), "2");
    expect(2.separate(1, "*"), "2");
    expect(25.separate(1, " "), "2 5");
    expect(25.separate(1, "*"), "2*5");
    expect(500.separate(1, " "), "5 0 0");
    expect(500.separate(1, "*"), "5*0*0");
    expect(32500.separate(1, " "), "3 2 5 0 0");
    expect(32500.separate(1, "*"), "3*2*5*0*0");
    expect(325000.separate(1, " "), "3 2 5 0 0 0");
    expect(325000.separate(1, "*"), "3*2*5*0*0*0");
    expect(325000123.separate(1, " "), "3 2 5 0 0 0 1 2 3");
    expect(325000123.separate(1, "*"), "3*2*5*0*0*0*1*2*3");

    expect(2.separate(2, " "), "2");
    expect(2.separate(2, "*"), "2");
    expect(25.separate(2, " "), "25");
    expect(25.separate(2, "*"), "25");
    expect(500.separate(2, " "), "5 00");
    expect(500.separate(2, "*"), "5*00");
    expect(32500.separate(2, " "), "3 25 00");
    expect(32500.separate(2, "*"), "3*25*00");
    expect(325000.separate(2, " "), "32 50 00");
    expect(325000.separate(2, "*"), "32*50*00");
    expect(325000123.separate(2, " "), "3 25 00 01 23");
    expect(325000123.separate(2, "*"), "3*25*00*01*23");

    expect(2.separate(3, " "), "2");
    expect(2.separate(3, "*"), "2");
    expect(25.separate(3, " "), "25");
    expect(25.separate(3, "*"), "25");
    expect(500.separate(3, " "), "500");
    expect(500.separate(3, "*"), "500");
    expect(32500.separate(3, " "), "32 500");
    expect(32500.separate(3, "*"), "32*500");
    expect(325000.separate(3, " "), "325 000");
    expect(325000.separate(3, "*"), "325*000");
    expect(325000123.separate(3, " "), "325 000 123");
    expect(325000123.separate(3, "*"), "325*000*123");
  });

  test("Separate nullable integer", () {
    expect(null as String?, null);

    expect(2.separate(1, " ") as String?, "2");
    expect(2.separate(1, "*") as String?, "2");
    expect(25.separate(1, " ") as String?, "2 5");
    expect(25.separate(1, "*") as String?, "2*5");
    expect(500.separate(1, " ") as String?, "5 0 0");
    expect(500.separate(1, "*") as String?, "5*0*0");
    expect(32500.separate(1, " ") as String?, "3 2 5 0 0");
    expect(32500.separate(1, "*") as String?, "3*2*5*0*0");
    expect(325000.separate(1, " ") as String?, "3 2 5 0 0 0");
    expect(325000.separate(1, "*") as String?, "3*2*5*0*0*0");
    expect(325000123.separate(1, " ") as String?, "3 2 5 0 0 0 1 2 3");
    expect(325000123.separate(1, "*") as String?, "3*2*5*0*0*0*1*2*3");

    expect(2.separate(2, " ") as String?, "2");
    expect(2.separate(2, "*") as String?, "2");
    expect(25.separate(2, " ") as String?, "25");
    expect(25.separate(2, "*") as String?, "25");
    expect(500.separate(2, " ") as String?, "5 00");
    expect(500.separate(2, "*") as String?, "5*00");
    expect(32500.separate(2, " ") as String?, "3 25 00");
    expect(32500.separate(2, "*") as String?, "3*25*00");
    expect(325000.separate(2, " ") as String?, "32 50 00");
    expect(325000.separate(2, "*") as String?, "32*50*00");
    expect(325000123.separate(2, " ") as String?, "3 25 00 01 23");
    expect(325000123.separate(2, "*") as String?, "3*25*00*01*23");

    expect(2.separate(3, " ") as String?, "2");
    expect(2.separate(3, "*") as String?, "2");
    expect(25.separate(3, " ") as String?, "25");
    expect(25.separate(3, "*") as String?, "25");
    expect(500.separate(3, " ") as String?, "500");
    expect(500.separate(3, "*") as String?, "500");
    expect(32500.separate(3, " ") as String?, "32 500");
    expect(32500.separate(3, "*") as String?, "32*500");
    expect(325000.separate(3, " ") as String?, "325 000");
    expect(325000.separate(3, "*") as String?, "325*000");
    expect(325000123.separate(3, " ") as String?, "325 000 123");
    expect(325000123.separate(3, "*") as String?, "325*000*123");
  });
}
