import 'dart:convert';

import 'category/category.dart';

class CategoryApi {
  CategoryApi({
    this.success,
    this.message,
    this.data,
  });

  bool? success;
  String? message;
  List<Category>? data;

  CategoryApi copyWith({
    bool? success,
    String? message,
    List<Category>? data,
  }) =>
      CategoryApi(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory CategoryApi.fromRawJson(String str) =>
      CategoryApi.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CategoryApi.fromJson(Map<String, dynamic> json) {
    return CategoryApi(
      success: json['success'],
      message: json['message'],
      data: json['data'] == null
          ? []
          : List<Category>.from(
              json['data']!.map((x) => Category.fromJson(x)),
            ),
    );
  }

  Map<String, dynamic> toJson() => {
        'success': success,
        'message': message,
        'data': data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}
