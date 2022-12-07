import 'package:flutter/material.dart';

final myTheme = ThemeData.light().copyWith(
  colorScheme: ThemeData.light().colorScheme.copyWith(
    primary: primaryColor,
    secondary: Colors.blue
  ),
  appBarTheme: AppBarTheme(
   // color: Color(0XFF02ABCB),
  )
);

final primaryColor = Color(0XFF00D0F7);