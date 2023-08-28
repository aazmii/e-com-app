import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  primaryColor: Colors.black,
  secondaryHeaderColor: const Color(0xFFECF0F3),
  inputDecorationTheme: inputDecorationTheme,
);
InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  floatingLabelBehavior: FloatingLabelBehavior.always,
  border: OutlineInputBorder(
    borderSide: const BorderSide(
      width: 2,
    ),
    borderRadius: BorderRadius.circular(20.0),
  ),
  activeIndicatorBorder: BorderSide.none,
  errorBorder: _appTextFielErrordBorder,
  focusedBorder: _textFieldBorder,
  disabledBorder: _textFieldBorder,
  enabledBorder: _textFieldBorder,
  focusedErrorBorder: _textFieldBorder,
  errorStyle: const TextStyle(
    color: Colors.transparent,
    fontSize: 0,
  ),
);

final _textFieldBorder = OutlineInputBorder(
  borderSide: const BorderSide(
    width: 1,
    color: Colors.grey,
  ),
  borderRadius: BorderRadius.circular(5),
);

final _appTextFielErrordBorder = OutlineInputBorder(
  borderSide: const BorderSide(
    color: Colors.red,
    width: 1,
  ),
  borderRadius: BorderRadius.circular(5.0),
);
