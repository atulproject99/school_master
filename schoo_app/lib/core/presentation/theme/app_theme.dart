import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';

class AppTheme {
  static const fontFamily = "SFProText";
  static final ThemeData light = ThemeData(
    primaryColor: AppColor.primaryColor,
    canvasColor: const Color.fromARGB(255, 255, 255, 254),
    cardTheme: const CardTheme(
      color: AppColor.appWhite,
    ),
    primaryColorDark: AppColor.primaryColorDark,
    iconTheme: const IconThemeData(
      color: AppColor.title1color,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColor.primaryColor,
      unselectedItemColor: const Color(0xFF999999),
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16.sp,
      ),
      showUnselectedLabels: true,
      selectedIconTheme: IconThemeData(
        size: 24.sp,
        color: AppColor.primaryColor,
      ),
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        color: AppColor.title1color,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColor.primaryColor,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light),
      color: AppColor.primaryColor,
      iconTheme: IconThemeData(
        color: AppColor.appWhite,
        size: 25.sp,
      ),
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColor.appWhite,
    cardColor: AppColor.appWhite,
    unselectedWidgetColor: Colors.black45,
    focusColor: AppColor.primaryColor,
    dividerColor: AppColor.appWhite,
    textTheme: TextTheme(
      headline1: TextStyle(
        color: AppColor.title1color,
        fontSize: 30.sp,
        fontFamily: AppTheme.fontFamily,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        color: AppColor.title1color,
        fontSize: 24.sp,
        fontFamily: AppTheme.fontFamily,
        fontWeight: FontWeight.normal,
      ),
      headline3: TextStyle(
        color: AppColor.title1color,
        fontSize: 18.sp,
        fontFamily: AppTheme.fontFamily,
        fontWeight: FontWeight.w500,
      ),
      headline4: TextStyle(
        color: AppColor.title1color,
        fontSize: 18.sp,
        fontFamily: AppTheme.fontFamily,
        fontWeight: FontWeight.w500,
      ),
      headline5: TextStyle(
        color: AppColor.title1color,
        fontSize: 15.sp,
        fontFamily: AppTheme.fontFamily,
        fontWeight: FontWeight.w400,
      ),
      headline6: TextStyle(
        color: AppColor.title1color,
        fontSize: 12.sp,
        fontFamily: AppTheme.fontFamily,
        fontWeight: FontWeight.w500,
      ),
      subtitle1: TextStyle(
        color: AppColor.subtitle1color,
        fontSize: 17.sp,
        fontFamily: AppTheme.fontFamily,
        fontWeight: FontWeight.w400,
      ),
      subtitle2: TextStyle(
        color: AppColor.subtitle1color,
        fontSize: 15.sp,
        fontFamily: AppTheme.fontFamily,
        fontWeight: FontWeight.w400,
      ),
    ),
  );

  static final ThemeData dark = ThemeData(
    primaryColor: const Color.fromARGB(255, 15, 6, 11),
    canvasColor: const Color.fromARGB(255, 255, 255, 254),
    cardTheme: CardTheme(
      color: AppColor.appBlackColor.withOpacity(0.7),
    ),
    primaryColorDark: AppColor.primaryColorDark,
    iconTheme: const IconThemeData(
      color: AppColor.title1color,
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColor.primaryColor,
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
        color: AppColor.title1color,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColor.appBlackColor,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light),
      color: AppColor.appBlackColor.withOpacity(0.5),
      iconTheme: IconThemeData(
        color: AppColor.appWhite,
        size: 25.sp,
      ),
    ),
    brightness: Brightness.dark,

    scaffoldBackgroundColor: AppColor.appBlackColor,
    //colorScheme: const ColorScheme.dark(),
    cardColor: AppColor.dividerColor.withOpacity(0.4),
    unselectedWidgetColor: Colors.black45,
    focusColor: AppColor.primaryColor,
    dividerColor: AppColor.appWhite,
    textTheme: TextTheme(
      headline1: GoogleFonts.roboto(
        color: AppColor.appWhite,
        fontSize: 30.sp,
        fontWeight: FontWeight.bold,
      ),
      headline2: GoogleFonts.roboto(
        color: AppColor.appWhite,
        fontSize: 24.sp,
        fontWeight: FontWeight.normal,
      ),
      headline3: GoogleFonts.roboto(
        color: AppColor.appWhite,
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
      ),
      headline4: GoogleFonts.roboto(
        color: AppColor.appWhite,
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
      ),
      headline5: GoogleFonts.roboto(
        color: AppColor.appWhite,
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
      ),
      headline6: GoogleFonts.roboto(
        color: AppColor.appWhite,
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
      ),
      subtitle1: GoogleFonts.roboto(
        color: AppColor.appWhite,
        fontSize: 17.sp,
        fontWeight: FontWeight.w400,
      ),
      subtitle2: GoogleFonts.lato(
        color: AppColor.appWhite,
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
