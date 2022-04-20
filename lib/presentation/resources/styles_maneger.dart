import 'package:flutter/material.dart';

import 'fonts_maneger.dart';

TextStyle _getTextStyle(
    double fontSize, String fontfamily, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontfamily,
    color: color,
    fontWeight: fontWeight,
  );
}

// text regular Style
TextStyle getRegularStyle(
    {double fontSize = FontSizemaneger.s12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontManeger.fontFamily,
    FontWightManeger.regular,
    color,
  );
}

// text Light Style
TextStyle getLightStyle(
    {double fontSize = FontSizemaneger.s12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontManeger.fontFamily,
    FontWightManeger.light,
    color,
  );
}

// text Bold Style
TextStyle getBoldStyle(
    {double fontSize = FontSizemaneger.s12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontManeger.fontFamily,
    FontWightManeger.bold,
    color,
  );
}

// text SemiBold Style
TextStyle getSemiBoldStyle(
    {double fontSize = FontSizemaneger.s12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontManeger.fontFamily,
    FontWightManeger.semiBold,
    color,
  );
}

// text Medium Style
TextStyle getMediumStyle(
    {double fontSize = FontSizemaneger.s12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontManeger.fontFamily,
    FontWightManeger.semiBold,
    color,
  );
}

