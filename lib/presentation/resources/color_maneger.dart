import 'package:flutter/material.dart';

class ColorManeger {
  static Color primary = HexColor.fromHex('#ED9728');
  static Color darkGrey = HexColor.fromHex('#ED9728');
  static Color grey = HexColor.fromHex('#ED9728');
  static Color lightGrey = HexColor.fromHex('#ED9728');
  static Color primaryOpacity70 = HexColor.fromHex('#B3Ed9728');

  //? New Color

  static Color darkPrimary = HexColor.fromHex('#d17d11');
  static Color grey1 = HexColor.fromHex('#707070');
  static Color grey2 = HexColor.fromHex('#797979');
  static Color white = HexColor.fromHex('#FFFFFF');
  static Color error = HexColor.fromHex('#e61f34'); // red Color
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll("#", "");
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString;
    }
    return Color(
      int.parse(hexColorString, radix: 16),
    );
  }
}
