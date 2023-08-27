import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';

// const kBottomOffScreenHeight = 120;
const pyamentDetailFieldLength = 120.0;
const pyamentModeLength = 260.0;
const emptyWidget = SizedBox.shrink();
const invoiceFormat = PdfPageFormat(
  80 * PdfPageFormat.mm,
  double.infinity,
);
const expandDuration = 200;
final paymentTableHeaders = [
  'Payemnt Mode',
  'Transaction Detail',
  'Amount',
  'Balance',
  ''
];
final paymentTableFlex = [8, 5, 3, 3, 1];
final paymentTableFlexesForWideScreen = [3, 4, 3, 3, 1];
const searchbarAndDraftHeight = 100; //spaces
const paymentDropdownWidth = 138.0;
//widths
const width5 = SizedBox(width: 5);
const width10 = SizedBox(width: 10);
const width20 = SizedBox(width: 20);
const width30 = SizedBox(width: 30);
const width40 = SizedBox(width: 40);
const width50 = SizedBox(width: 50);
const width70 = SizedBox(width: 70);

//widths
const height2 = SizedBox(height: 2);
const height5 = SizedBox(height: 5);
const height10 = SizedBox(height: 10);
const height20 = SizedBox(height: 20);
const height30 = SizedBox(height: 30);
const height40 = SizedBox(height: 40);
const height50 = SizedBox(height: 50);

const scrollbarWidth = 12.0;

const categoryCardColor = Color(0xFFE5E5E5);
