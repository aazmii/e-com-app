import 'package:flutter/material.dart';
import 'package:http/http.dart' show MultipartRequest;
import 'package:intl/intl.dart' show DateFormat;

const appName = 'flutter_app';

DateFormat dateFormat = DateFormat('dd-MM-yy');

//WebView User Agent
const String webViewUserAgent =
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36';

const String baseLink = '';

const String playStoreUrl = 'https://play.google.com/store/apps/details?id= ';
const String imageBaseLink =
    'https://bar-b-q-tonightapi.algorithmgeneration.com/';
const Map<String, String> headerNoAuth = {'Accept': 'application/json'};

Map<String, String> headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer ...',
};
const xApiKey = '0l2D3blV.nge9FMG7uyRDr05ZuqqNs1hBq2e4LHF8';
Map<String, String> xHeaders = {
  'x-api-key': xApiKey,
  'Content-Type': 'application/json'
};
MultipartRequest postURL(String trail) =>
    MultipartRequest('POST', Uri.parse(baseLink + trail));

MultipartRequest getURL(String trail) =>
    MultipartRequest('GET', Uri.parse(baseLink + trail));

const categoryWidth = 160.0, categoryHeight = 150.0, subCategoryHeight = 50.0;
const textFieldHeight = 33.0;
final discountKey = GlobalKey<FormState>();

// final selectedPaymentMethodColor = Colors.
