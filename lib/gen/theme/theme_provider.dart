// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/utils/app_colors.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  // static final darkTheme = ThemeData(
  //   scaffoldBackgroundColor: const Color(0xff17122A),
  //   backgroundColor: const Color(0xff17122A),
  //   primaryColor: AppColors.primary,
  //   primaryColorDark: AppColors.primary,
  //   primaryColorLight: AppColors.primary,
  //   secondaryHeaderColor: const Color(0xFFD21D5B),
  //   accentColor: const Color(0xFF48BCE1),
  //   dividerColor: Colors.grey,
  //   textTheme: const TextTheme().copyWith(
  //     bodyText1: const TextStyle(
  //       color: Colors.white,
  //       height: 1.5,
  //       fontSize: 16.0,
  //     ),
  //     bodyText2: const TextStyle(
  //       color: Colors.white,
  //     ),
  //     headline4: const TextStyle(
  //       color: Colors.white,
  //     ),
  //     headline5: const TextStyle(
  //       color: Colors.white,
  //     ),
  //     headline6: const TextStyle(
  //       color: Colors.white,
  //     ),
  //     headline3: const TextStyle(
  //       color: Colors.white,
  //     ),
  //   ),
  //   buttonTheme: const ButtonThemeData().copyWith(
  //     buttonColor: const Color(0xFF121212),
  //   ),
  //   elevatedButtonTheme: ElevatedButtonThemeData(
  //     style: ButtonStyle(
  //       backgroundColor: MaterialStateProperty.all<Color>(
  //         const Color(0xFF1D4788),
  //       ),
  //       padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
  //         const EdgeInsets.only(left: 45.0, right: 45.0, top: 20.0, bottom: 20.0),
  //       ),
  //       textStyle: MaterialStateProperty.all<TextStyle>(
  //         const TextStyle(fontSize: 15.0, color: Colors.white),
  //       ),
  //       elevation: MaterialStateProperty.all<double>(15.0),
  //       shadowColor: MaterialStateProperty.all<Color>(
  //         const Color(0xFF1D4788),
  //       ),
  //     ),
  //   ),
  //   colorScheme: const ColorScheme.dark(),
  //   accentIconTheme: const IconThemeData(color: Colors.white, opacity: 0.8, size: 24),
  //   iconTheme: const IconThemeData(color: Colors.white, opacity: 0.8, size: 24),
  // );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xffEDF1F4),
    backgroundColor: const Color(0xFFffffff),
    primaryColor: AppColors.primary,
    primaryColorDark: AppColors.primary,
    primaryColorLight: AppColors.primary,
    secondaryHeaderColor: const Color(0xFFF0A904),
    accentColor: const Color(0xFF48BCE1),
    dividerColor: const Color(0xFFFFFFFF),
    textTheme: const TextTheme().copyWith(
      bodyText1: GoogleFonts.dmSans(
        color: Colors.black,
        fontSize: 16.0,
        height: 1.5,
      ),
      bodyText2: GoogleFonts.inter(
        color: Colors.black,
         fontSize: 16.0,
        height: 1.5,
      ),
      headline4: GoogleFonts.dmSans(
        color: Colors.black,
      ),
      headline5: GoogleFonts.dmSans(
        color: Colors.black,
      ),
      headline6: GoogleFonts.dmSans(
        color: Colors.black,
      ),
      headline3: GoogleFonts.dmSans(
        color: Colors.black,
      ),
    ),
    buttonTheme: const ButtonThemeData().copyWith(
      buttonColor: const Color(0xFF121212),
      hoverColor: const Color(0xFF121212),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color(0xFF0000FF),
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.only(
              left: 45.0, right: 45.0, top: 20.0, bottom: 20.0),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
        ),
        elevation: MaterialStateProperty.all<double>(15.0),
        shadowColor: MaterialStateProperty.all<Color>(const Color(0xFF0000FF)),
      ),
    ),
    colorScheme: const ColorScheme.light(),
    accentIconTheme:
        const IconThemeData(color: Colors.black, opacity: 0.8, size: 24),
    iconTheme: const IconThemeData(color: Colors.black, opacity: 0.8, size: 24),
  );
}
