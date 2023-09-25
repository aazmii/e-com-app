import 'package:flutter/services.dart';

final RegExp emailValidatorRegExp =
    RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
final RegExp emailPhoneValidatorRegExp =
    RegExp(r'^([0-9]{9})|([A-Za-z0-9._%\+\-]+@[a-z0-9.\-]+\.[a-z]{2,3})$');
final positiveDouble = RegExp(r'^[0-9]*\.?[0-9]*$');

TextInputFormatter get decimalOnly => FilteringTextInputFormatter.allow(
    RegExp(r'^\d+(\.\d{0,2})?$|^\.\d{1,2}$|\bregex\b'));
