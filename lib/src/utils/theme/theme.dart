import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TApptheme{
static ThemeData lightTheme= ThemeData(brightness:  Brightness.light,
textTheme: TextTheme(
 headlineLarge: GoogleFonts.firaSans(
  color: Colors.green
 )
)

);
static ThemeData darkTheme= ThemeData(brightness:  Brightness.dark
,textTheme: TextTheme(
 headlineLarge: GoogleFonts.firaSans(
  color: Colors.white
))
);
}