import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';



class TimeApi {
  static Future<DateTime?> getTime() async {
  DateTime? now;
  try {
    //  Make a request
    Response response = await get(
        Uri.parse("https://worldtimeapi.org/api/timezone/Asia/Dhaka"));
    Map<String, dynamic> data = jsonDecode(response.body);

    String datetime = data['datetime'];
    now = DateTime.parse(datetime);
  } catch (e) {
    debugPrint('caught error : $e');
  }
  return DateTime.now();
}

}