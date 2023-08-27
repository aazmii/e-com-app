import 'package:flutter/material.dart';

class TimeApi {
  static Future<DateTime?> getTime() async {
    DateTime? now;
    try {
      //  Make a request
      // Response response = await get(
      //     Uri.parse("https://worldtimeapi.org/api/timezone/Asia/Dhaka"));
      // Map<String, dynamic> data = jsonDecode(response.body);

      // String datetime = data['datetime'];
      // now = DateTime.parse(datetime);
      now = DateTime.now();
    } catch (e) {
      debugPrint('caught error : $e');
    }
    return now;
  }
}
