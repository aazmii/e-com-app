// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:pos_sq/src/components/buttons/custom.square.button.dart';
// import 'package:pos_sq/src/constants/constants.dart';
// import 'package:pos_sq/src/constants/src/ui.consts.dart';
// import 'package:pos_sq/src/extensions/extensions.dart';
// import 'package:pos_sq/src/modules/order.detail/models/order/order.dart';
// import 'package:pos_sq/src/providers/orientation.provider.dart';

// import '../model/payment.detail.dart';
// import 'payment.type.option.dart';

// class PaymentCustomTable extends ConsumerWidget {
//   const PaymentCustomTable({super.key, required this.order});

//   final Order? order;
//   @override
//   Widget build(BuildContext context, ref) {
//     final isVertical = ref.watch(layoutProvider) == AppLayout.verticalView;
//     final transactions = [];
//     String txt = '';
//     return Column(
//       children: [
//         Text(
//           'Payment Details',
//           style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
//         ),
//         height20,
//         const _TableTtile(),
//         ...List.generate(
//           transactions.length,

//           // order!.balance(transactions.length - 1) >= 0
//           //     ? transactions.length
//           //     : transactions.length - 1,
//           (i) {
//             return Padding(
//               padding: const EdgeInsets.only(right: 4, top: 4),
//               child: Column(
//                 children: [
//                   _TransactoinRow(
//                     flexes: isVertical
//                         ? paymentTableFlexesForWideScreen
//                         : paymentTableFlex,
//                     transactionIndex: i,
//                     paymentDetail: transactions[i],
//                     order: order!,
//                     // balance: i == 0 ? order!.netTotal : order!.balance(i - 1),
//                     tDetailsController: TextEditingController(),
//                     amountController: TextEditingController(),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//         if (order!.balance(transactions.length - 1) < 0)
//           _ReturnAmountText(
//             text: txt,
//             amount: order!.balance(transactions.length - 1),
//           ),
//       ],
//     );
//   }
// }

// class _ReturnAmountText extends StatelessWidget {
//   const _ReturnAmountText({
//     required this.amount,
//     required this.text,
//   });
//   final String? text;
//   final double amount;
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.centerRight,
//       child: Container(
//         margin: const EdgeInsets.only(top: 5),
//         padding: const EdgeInsets.only(left: 10),
//         height: 35,
//         decoration: BoxDecoration(
//           color: context.secondaryColor,
//           border: Border.all(color: context.primaryColor),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             const Padding(
//               padding: EdgeInsets.all(3.0),
//               child: Text(
//                 'Return to customer:',
//                 style: TextStyle(
//                   fontWeight: FontWeight.w500,
//                   fontSize: 16,
//                   color: Colors.red,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               width: 5,
//             ),
//             const Spacer(),
//             Text(
//               'TK ${amount.abs().formatted}',
//               style: const TextStyle(fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(width: 35),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _TransactoinRow extends ConsumerWidget {
//   const _TransactoinRow({
//     required this.flexes,
//     required this.transactionIndex,
//     required this.paymentDetail,
//     required this.order,
//     this.balance,
//     required this.amountController,
//     required this.tDetailsController,
//   });
//   final Order order;
//   final int transactionIndex;
//   final List<int> flexes;
//   final PaymentDetail paymentDetail;
//   final _scrollBarWidth = 10.0;
//   final double? balance;
//   final TextEditingController amountController;
//   final TextEditingController tDetailsController;

//   @override
//   Widget build(BuildContext context, ref) {
//     return Row(
//       children: [
//         PaymentOptions(
//           hasOrder: balance != 0,
//           tIndex: transactionIndex,
//         ),
//         Expanded(
//           flex: flexes[1],
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2),
//             child: SizedBox(
//               height: textFieldHeight,
//               child: TextField(
//                 decoration: const InputDecoration(
//                   filled: false,
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black26),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black26),
//                   ),
//                 ),
//                 readOnly: balance == 0,
//                 onTap: () {
//                   if (balance == 0) {
//                     context.showSnack(kNoOederSelected);
//                   }

//                   tDetailsController.selection = TextSelection(
//                     baseOffset: 0,
//                     extentOffset: tDetailsController.value.text.length,
//                   );
//                 },
//                 cursorHeight: textFieldHeight - 10,
//                 controller: tDetailsController,
//                 onChanged: (s) {},
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           flex: flexes[2],
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 4.0),
//             child: SizedBox(
//               height: textFieldHeight,
//               child: TextFormField(
//                 decoration: const InputDecoration(
//                   filled: false,
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black26),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black26),
//                   ),
//                 ),
//                 readOnly: balance == 0,
//                 onTap: () {
//                   if (balance == 0) {
//                     context.showSnack(kNoOederSelected);
//                   }
//                   amountController.selection = TextSelection(
//                     baseOffset: 0,
//                     extentOffset: amountController.value.text.length,
//                   );
//                 },
//                 controller: amountController,
//                 inputFormatters: [
//                   FilteringTextInputFormatter.allow(positiveDouble)
//                 ],
//                 cursorHeight: textFieldHeight - 10,
//                 textAlign: TextAlign.right,
//                 maxLines: 1,
//                 onChanged: (s) {
//                   if (order.balance(0) == 0) return;
//                 },
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           flex: flexes[3],
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 4.0),
//             child: SizedBox(
//               height: textFieldHeight,
//               child: Align(
//                 alignment: Alignment.centerRight,
//                 child: SingleChildScrollView(
//                   // scrollDirection: Axis.horizontal,
//                   child: Text(
//                     balance.formatted,
//                     overflow: TextOverflow.ellipsis,
//                     maxLines: 2,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         transactionIndex != 0
//             ? CustomButton(
//                 iconColor: Colors.black54,
//                 onPressed: () => {},
//                 icon: FontAwesomeIcons.xmark,
//               )
//             : const SizedBox(width: 20),
//         SizedBox(width: _scrollBarWidth),
//       ],
//     );
//   }
// }

// class _TableTtile extends ConsumerWidget {
//   const _TableTtile();
//   final _cashAndCardWidth = 98.0;
//   @override
//   Widget build(BuildContext context, ref) {
//     final isVertical = ref.watch(layoutProvider) == AppLayout.verticalView;
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 4),
//       color: context.secondaryColor,
//       child: Row(
//         children: List.generate(
//           paymentTableHeaders.length,
//           (i) {
//             return isVertical
//                 ? Expanded(
//                     flex: paymentTableFlexesForWideScreen[i],
//                     child: Text(
//                       paymentTableHeaders[i],
//                       textAlign: TextAlign.center,
//                       style: const TextStyle(
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   )
//                 : i == 0
//                     ? SizedBox(
//                         width: paymentDropdownWidth + _cashAndCardWidth,
//                         child: Text(
//                           paymentTableHeaders[i],
//                           textAlign: TextAlign.center,
//                           style: const TextStyle(
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       )
//                     : Expanded(
//                         flex: paymentTableFlex[i],
//                         child: Text(
//                           paymentTableHeaders[i],
//                           textAlign: TextAlign.center,
//                           style: const TextStyle(
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       );
//           },
//         ),
//       ),
//     );
//   }
// }
