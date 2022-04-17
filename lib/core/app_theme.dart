import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_constant.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    primaryColor: AppConstant.primaryColor,
    canvasColor: const Color.fromARGB(255, 255, 255, 254),
    cardTheme: const CardTheme(
      color: AppConstant.secondaryColor,
    ),
    primaryColorDark: AppConstant.primaryColorDark,
    iconTheme: const IconThemeData(
      color: AppConstant.title1color,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppConstant.primaryColor,
      unselectedItemColor: const Color(0xFF999999),
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 10.sp,
      ),
      selectedIconTheme: IconThemeData(
        size: 24.sp,
      ),
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        color: AppConstant.title1color,
      ),
      color: AppConstant.appWhite,
      iconTheme: IconThemeData(
        color: AppConstant.title1color,
        size: 16.h,
      ),
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppConstant.appWhite,
    cardColor: AppConstant.appWhite,
    unselectedWidgetColor: Colors.black45,
    focusColor: AppConstant.primaryColor,
    dividerColor: AppConstant.appWhite,
    textTheme: TextTheme(
      headline1: GoogleFonts.poppins(
        color: AppConstant.title1color,
        fontSize: 30.sp,
        fontWeight: FontWeight.bold,
      ),
      headline2: GoogleFonts.poppins(
        color: AppConstant.title1color,
        fontSize: 24.sp,
        fontWeight: FontWeight.normal,
      ),
      headline3: GoogleFonts.poppins(
        color: AppConstant.title1color,
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
      ),
      headline4: GoogleFonts.poppins(
        color: AppConstant.title1color,
        fontSize: 15.sp,
        fontWeight: FontWeight.w500,
      ),
      headline5: GoogleFonts.poppins(
        color: AppConstant.title1color,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      ),
      headline6: GoogleFonts.poppins(
        color: AppConstant.title1color,
        fontSize: 10.sp,
        fontWeight: FontWeight.w500,
      ),
      subtitle1: GoogleFonts.poppins(
        color: AppConstant.subtitle1color,
        fontSize: 17.sp,
        fontWeight: FontWeight.w400,
      ),
      subtitle2: GoogleFonts.poppins(
        color: AppConstant.subtitle1color,
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
      ),
    ),
  );

  // static final ThemeData dark = ThemeData(
  //   primaryColor: Colors.black12,
  //   primaryColorDark: Colors.black,
  //   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //       backgroundColor: Colors.black,
  //       selectedItemColor: Colors.white,
  //       unselectedItemColor: Colors.white70),
  //   appBarTheme: AppBarTheme(
  //     titleTextStyle: GoogleFonts.poppins(
  //         fontWeight: FontWeight.w500,
  //         fontSize: 20.sp,
  //         color: AppConstant.appWhite),
  //     color: AppConstant.appBlack,
  //     iconTheme: IconThemeData(color: AppConstant.appWhite, size: 16.h),
  //   ),
  //   brightness: Brightness.dark,
  //   scaffoldBackgroundColor: Colors.black,
  //   focusColor: Colors.white,
  //   dividerColor: AppConstant.appBlack,
  //   textTheme: TextTheme(
  //     headline1: GoogleFonts.poppins(
  //         color: AppConstant.appWhite,
  //         fontSize: 24.sp,
  //         fontWeight: FontWeight.bold),
  //     headline2: GoogleFonts.poppins(
  //         color: AppConstant.appWhite,
  //         fontSize: 20.sp,
  //         fontWeight: FontWeight.w600),
  //     headline3: GoogleFonts.poppins(
  //         color: AppConstant.appWhite,
  //         fontSize: 18.sp,
  //         fontWeight: FontWeight.w500),
  //     headline4: GoogleFonts.poppins(
  //         color: AppConstant.appBlack,
  //         fontSize: 10.sp,
  //         fontWeight: FontWeight.w400),
  //     headline5: GoogleFonts.poppins(
  //         color: AppConstant.appWhite,
  //         fontSize: 15.sp,
  //         fontWeight: FontWeight.w500),
  //     headline6: GoogleFonts.poppins(
  //         color: AppConstant.appWhite,
  //         fontSize: 15.sp,
  //         fontWeight: FontWeight.w500),
  //     subtitle1: GoogleFonts.poppins(
  //         color: AppConstant.searchBarTextColor,
  //         fontSize: 17.sp,
  //         fontWeight: FontWeight.w400),
  //     subtitle2: GoogleFonts.poppins(
  //         color: AppConstant.appWhite,
  //         fontSize: 10.sp,
  //         fontWeight: FontWeight.w600),
  //   ),
  // );
}
