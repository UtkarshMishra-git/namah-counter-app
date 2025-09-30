import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Sacred Hindu Colors
  static const Color primaryOrange = Color(0xFFFF6600);
  static const Color secondaryOrange = Color(0xFFFF8C00);
  static const Color goldenYellow = Color(0xFFFFD700);
  static const Color accentGold = Color(0xFFFFA500);
  static const Color cream = Color(0xFFFCFCF9);
  static const Color darkOrange = Color(0xFFE55A00);

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: primaryOrange,
      colorScheme: const ColorScheme.light(
        primary: primaryOrange,
        secondary: goldenYellow,
        surface: cream,
        background: cream,
        onPrimary: Colors.white,
        onSecondary: Colors.black87,
        onSurface: Colors.black87,
        onBackground: Colors.black87,
      ),
      scaffoldBackgroundColor: cream,
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryOrange,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryOrange,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 4,
        ),
      ),
      textTheme: GoogleFonts.interTextTheme().copyWith(
        headlineLarge: GoogleFonts.notoSansDevanagari(
          fontSize: 64,
          fontWeight: FontWeight.w800,
          color: primaryOrange,
        ),
        headlineMedium: GoogleFonts.inter(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: primaryOrange,
        ),
        headlineSmall: GoogleFonts.inter(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
        bodyLarge: GoogleFonts.inter(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.black87,
        ),
        labelLarge: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}