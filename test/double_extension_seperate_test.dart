// ignore_for_file: unnecessary_cast

import 'package:test/test.dart';
import 'package:utils/extensions.dart';

void main() {
  test("Separate double", () {
    expect(2.0.separate(1, " "), "2,0");
    expect(2.00000.separate(1, " "), "2,0");
    expect(2.5.separate(1, "*"), "2,5");
    expect(25.456.separate(1, " "), "2 5,456");
    expect(25.456.separate(1, "*"), "2*5,456");
    expect(500.456.separate(1, " "), "5 0 0,456");
    expect(500.456.separate(1, "*"), "5*0*0,456");
    expect(32500.123.separate(1, " "), "3 2 5 0 0,123");
    expect(32500.123.separate(1, "*"), "3*2*5*0*0,123");
    expect(325000.789.separate(1, " "), "3 2 5 0 0 0,789");
    expect(325000.789.separate(1, "*"), "3*2*5*0*0*0,789");
    expect(325000123.654.separate(1, " "), "3 2 5 0 0 0 1 2 3,654");
    expect(325000123.654.separate(1, "*"), "3*2*5*0*0*0*1*2*3,654");

    expect(2.123.separate(2, " "), "2,123");
    expect(2.123.separate(2, "*"), "2,123");
    expect(25.123.separate(2, " "), "25,123");
    expect(25.456.separate(2, "*"), "25,456");
    expect(500.456.separate(2, " "), "5 00,456");
    expect(500.456.separate(2, "*"), "5*00,456");
    expect(32500.789.separate(2, " "), "3 25 00,789");
    expect(32500.789.separate(2, "*"), "3*25*00,789");
    expect(325000.789.separate(2, " "), "32 50 00,789");
    expect(325000.963.separate(2, "*"), "32*50*00,963");
    expect(325000123.963.separate(2, " "), "3 25 00 01 23,963");
    expect(325000123.963.separate(2, "*"), "3*25*00*01*23,963");

    expect(2.123.separate(3, " "), "2,123");
    expect(2.123.separate(3, "*"), "2,123");
    expect(25.123.separate(3, " "), "25,123");
    expect(25.456.separate(3, "*"), "25,456");
    expect(500.456.separate(3, " "), "500,456");
    expect(500.456.separate(3, "*"), "500,456");
    expect(32500.456.separate(3, " "), "32 500,456");
    expect(32500.789.separate(3, "*"), "32*500,789");
    expect(325000.789.separate(3, " "), "325 000,789");
    expect(325000.789.separate(3, "*"), "325*000,789");
    expect(325000123.120.separate(3, " "), "325 000 123,12");
    expect(325000123.123.separate(3, "*"), "325*000*123,123");

    expect(2.123.separate(3, " ", decimal: "!"), "2!123");
    expect(2.123.separate(3, "*", decimal: "!"), "2!123");
    expect(25.123.separate(3, " ", decimal: "!"), "25!123");
    expect(25.456.separate(3, "*", decimal: "!"), "25!456");
    expect(500.456.separate(3, " ", decimal: "!"), "500!456");
    expect(500.456.separate(3, "*", decimal: "!"), "500!456");
    expect(32500.456.separate(3, " ", decimal: "!"), "32 500!456");
    expect(32500.789.separate(3, "*", decimal: "!"), "32*500!789");
    expect(325000.789.separate(3, " ", decimal: "!"), "325 000!789");
    expect(325000.789.separate(3, "*", decimal: "!"), "325*000!789");
    expect(325000123.120.separate(3, " ", decimal: "!"), "325 000 123!12");
    expect(325000123.123.separate(3, "*", decimal: "!"), "325*000*123!123");
  });

  test("Separate nullable double", () {
    expect(null as String?, null);

    expect(2.0.separate(1, " ") as String?, "2,0");
    expect(2.00000.separate(1, " ") as String?, "2,0");
    expect(2.5.separate(1, "*") as String?, "2,5");
    expect(25.456.separate(1, " ") as String?, "2 5,456");
    expect(25.456.separate(1, "*") as String?, "2*5,456");
    expect(500.456.separate(1, " ") as String?, "5 0 0,456");
    expect(500.456.separate(1, "*") as String?, "5*0*0,456");
    expect(32500.123.separate(1, " ") as String?, "3 2 5 0 0,123");
    expect(32500.123.separate(1, "*") as String?, "3*2*5*0*0,123");
    expect(325000.789.separate(1, " ") as String?, "3 2 5 0 0 0,789");
    expect(325000.789.separate(1, "*") as String?, "3*2*5*0*0*0,789");
    expect(325000123.654.separate(1, " ") as String?, "3 2 5 0 0 0 1 2 3,654");
    expect(325000123.654.separate(1, "*") as String?, "3*2*5*0*0*0*1*2*3,654");

    expect(2.123.separate(2, " ") as String?, "2,123");
    expect(2.123.separate(2, "*") as String?, "2,123");
    expect(25.123.separate(2, " ") as String?, "25,123");
    expect(25.456.separate(2, "*") as String?, "25,456");
    expect(500.456.separate(2, " ") as String?, "5 00,456");
    expect(500.456.separate(2, "*") as String?, "5*00,456");
    expect(32500.789.separate(2, " ") as String?, "3 25 00,789");
    expect(32500.789.separate(2, "*") as String?, "3*25*00,789");
    expect(325000.789.separate(2, " ") as String?, "32 50 00,789");
    expect(325000.963.separate(2, "*") as String?, "32*50*00,963");
    expect(325000123.963.separate(2, " ") as String?, "3 25 00 01 23,963");
    expect(325000123.963.separate(2, "*") as String?, "3*25*00*01*23,963");

    expect(2.123.separate(3, " ") as String?, "2,123");
    expect(2.123.separate(3, "*") as String?, "2,123");
    expect(25.123.separate(3, " ") as String?, "25,123");
    expect(25.456.separate(3, "*") as String?, "25,456");
    expect(500.456.separate(3, " ") as String?, "500,456");
    expect(500.456.separate(3, "*") as String?, "500,456");
    expect(32500.456.separate(3, " ") as String?, "32 500,456");
    expect(32500.789.separate(3, "*") as String?, "32*500,789");
    expect(325000.789.separate(3, " ") as String?, "325 000,789");
    expect(325000.789.separate(3, "*") as String?, "325*000,789");
    expect(325000123.120.separate(3, " ") as String?, "325 000 123,12");
    expect(325000123.123.separate(3, "*") as String?, "325*000*123,123");

    expect(2.123.separate(3, " ", decimal: "!") as String?, "2!123");
    expect(2.123.separate(3, "*", decimal: "!") as String?, "2!123");
    expect(25.123.separate(3, " ", decimal: "!") as String?, "25!123");
    expect(25.456.separate(3, "*", decimal: "!") as String?, "25!456");
    expect(500.456.separate(3, " ", decimal: "!") as String?, "500!456");
    expect(500.456.separate(3, "*", decimal: "!") as String?, "500!456");
    expect(32500.456.separate(3, " ", decimal: "!") as String?, "32 500!456");
    expect(32500.789.separate(3, "*", decimal: "!") as String?, "32*500!789");
    expect(325000.789.separate(3, " ", decimal: "!") as String?, "325 000!789");
    expect(325000.789.separate(3, "*", decimal: "!") as String?, "325*000!789");
    expect(325000123.120.separate(3, " ", decimal: "!") as String?,
        "325 000 123!12");
    expect(325000123.123.separate(3, "*", decimal: "!") as String?,
        "325*000*123!123");
  });
}
