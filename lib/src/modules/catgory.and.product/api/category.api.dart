import 'dart:convert' show jsonDecode;
import 'dart:io' show SocketException;

import 'package:http/http.dart' as http;
import 'package:pos_sq/src/constants/src/api.const.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category/category.dart';

import '../model/category.api.response.model.dart';

Future<List<Category>?> getProductCategories() async {
  try {
    var request = http.Request(
        'GET',
        Uri.parse(
          'https://bar-b-q-tonightapi.algorithmgeneration.com/api/v1/categories/',
        ));

    request.headers.addAll(xHeaders);
    http.StreamedResponse response = await request.send();
    final body = await response.stream.bytesToString();
    if (jsonDecode(body)['success'] == true) {
      if (CategoryApi.fromRawJson(body).data == null) return [];
      return CategoryApi.fromRawJson(body).data!.reversed.toList();
    } else {
      // log('${response.reasonPhrase!} Something went wrong!');
      return null;
    }
  } on SocketException catch (_) {
    // log('No Internet Connection');
    return null;
  } catch (e) {
    // log('$e Something went wrong');
    return null;
  }
}
