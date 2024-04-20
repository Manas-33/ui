import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var textColorGrey = Color.fromARGB(255, 236, 230, 230).withOpacity(0.8);
const white = Colors.white;

TextStyle googleTextStyle(
    double customFontSize, FontWeight fontWeight, Color color) {
  return GoogleFonts.openSans(
    textStyle: TextStyle(
      color: color,
      fontSize: customFontSize,
      fontWeight: fontWeight,
    ),
  );
}
