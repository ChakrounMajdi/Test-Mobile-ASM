import 'package:flutter/material.dart';
import 'package:test_mobile_asm/constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kScaffoldBackgroundColor,
    appBarTheme: appBarTheme(),
    elevatedButtonTheme: elevatedButtonThemeData(),
    inputDecorationTheme: inputDecorationTheme(),
    dataTableTheme: dataTableThemeData(),
    textButtonTheme: textButtonThemeData(),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
    titleTextStyle: TextStyle(color: kPrimaryColor),
    centerTitle: true,
    iconTheme: IconThemeData(color: kPrimaryColor),
  );
}

InputDecorationTheme inputDecorationTheme() {
  return const InputDecorationTheme(
    border: InputBorder.none,
    fillColor: kTextFieldColor,
    filled: true,
  );
}

ElevatedButtonThemeData elevatedButtonThemeData() {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
      padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 50, vertical: 25)),
    ),
  );
}

DataTableThemeData dataTableThemeData() {
  return const DataTableThemeData(
      headingTextStyle: TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black));
}

TextButtonThemeData textButtonThemeData() {
  return TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Colors.black54,
      textStyle: const TextStyle(decoration: TextDecoration.underline),
    ),
  );
}
