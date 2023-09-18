// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:pos_sq/src/extensions/extensions.dart';
// import 'package:pos_sq/src/models/order/order.dart';

// class PaymentTableMobileView extends ConsumerWidget {
//   const PaymentTableMobileView({super.key, this.order});
//   final Order? order;

//   @override
//   Widget build(BuildContext context, ref) {
//     return Container(
//       padding: const EdgeInsets.all(6),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         border: Border.all(
//           width: 2,
//           color: context.primaryColor,
//         ),
//       ),
//       child: Column(
//         children: [
//           const Text(
//             'Transaction Detail',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           // PaymentCard(
//           //   order: null,
//           //   transactionIndex: 0,
//           //   userTransaction: Transaction(),
//           //   controller: TextEditingController(),
//           // ),
//           if (order != null)
//             ...List.generate(
//               order!.balance(transactions.length - 1) > 0
//                   ? transactions.length
//                   : transactions.length - 1,
//               (i) => PaymentCard(
//                 transactionIndex: i,
//                 order: order!,
//                 userTransaction: order!.transactionLinks.toList()[i],
//                 balance: i == 0 ? order!.netTotal : order!.balance(i - 1),
//               ),
//             ),
//           if (order!.balance(transactions.length - 1) < 0)
//             _ReturnRow(
//               balance: order!.balance(transactions.length - 1),
//             ),
//           if (order!.balance(transactions.length - 1) == 0)
//             const _NothingToReturnRow(),
//           // const AddPaymentButton()
//         ],
//       ),
//     );
//   }
// }

// class PaymentCard extends ConsumerWidget {
//   const PaymentCard({
//     super.key,
//     required this.transactionIndex,
//     required this.order,
//     required this.userTransaction,
//     this.controller,
//     required this.balance,
//   });
//   final int transactionIndex;
//   final Transaction userTransaction;
//   final double balance;
//   final Order? order;
//   final TextEditingController? controller;

//   @override
//   Widget build(BuildContext context, ref) {
//     final controller = ref.watch(tecProvider('${userTransaction.isarId}'));
//     if (controller.text.isEmpty) {
//       if (userTransaction.transactionAmount == null ||
//           userTransaction.transactionAmount == 0) {
//         controller.text = '';
//       } else {
//         controller.text = '${userTransaction.transactionAmount ?? ''}';
//       }
//     }

//     final transaction = order != null
//         ? order!.transactionLinks.toList()[transactionIndex]
//         : Transaction();
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 10),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Expanded(
//             child: Container(
//               padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: context.secondaryColor,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'Select Payment Mode: ',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   height10,
//                   PaymentOptions(
//                     transactionId: transaction.isarId,
//                     hasOrder: order?.balance(0) != 0,
//                   ),
//                   height10,
//                   _TextfieldRow(
//                     title: 'Transaction Detail',
//                     enableCashIcon: false,
//                     // inputFormatters: [FilteringTextInputFormatter.digitsOnly],

//                     onChanged: (s) => ref
//                         .read(selectedOrderProvider.notifier)
//                         .onDetailChange(s, transaction.isarId),
//                   ),
//                   height10,
//                   _TextfieldRow(
//                     title: 'Amount',
//                     inputFormatters: [
//                       FilteringTextInputFormatter.allow(positiveDouble)
//                     ],
//                     onChanged: (s) {
//                       ref.read(selectedOrderProvider.notifier).onAmountChange(
//                           controller.text,
//                           transactionIndex,
//                           transaction,
//                           order);
//                     },
//                     initAmount: userTransaction.transactionAmount,
//                     maxLines: 1,
//                     onTap: () => ref
//                         .watch(tecProvider('${userTransaction.isarId}'))
//                         .selection = TextSelection(
//                       baseOffset: 0,
//                       extentOffset: ref
//                           .watch(tecProvider('${userTransaction.isarId}'))
//                           .value
//                           .text
//                           .length,
//                     ),
//                     controller: controller,
//                   ),
//                   height10,
//                   _BalanceRow(balance: balance),
//                 ],
//               ),
//             ),
//           ),
//           transactionIndex != 0
//               ? Padding(
//                   padding: const EdgeInsets.only(left: 4, right: 2),
//                   child: SuquareButton(
//                     icon: Icons.remove,
//                     onPressed: () => ref
//                         .read(selectedOrderProvider.notifier)
//                         .removeTransactionMethod(transaction),
//                     size: 18,
//                   ),
//                 )
//               : emptyWidget
//         ],
//       ),
//     );
//   }
// }

// class _NothingToReturnRow extends StatelessWidget {
//   const _NothingToReturnRow({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.green.withOpacity(0.5),
//       ),
//       child: const Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Text(
//             'Nothing to return',
//             style: TextStyle(fontWeight: FontWeight.w500),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _BalanceRow extends StatelessWidget {
//   const _BalanceRow({required this.balance});

//   final double? balance;
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           const Expanded(
//             child: Text(
//               'Balance',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Text(balance.formatted),
//           width10,
//         ],
//       ),
//     );
//   }
// }

// class _ReturnRow extends StatelessWidget {
//   const _ReturnRow({
//     super.key,
//     required this.balance,
//   });

//   final double balance;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         const Text(
//           'Return :',
//           style: TextStyle(
//             color: Colors.red,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const Spacer(),
//         Text(
//           'TK ${balance.abs().formatted}',
//           style: const TextStyle(fontWeight: FontWeight.bold),
//         ),
//         width5,
//       ],
//     );
//   }
// }

// class _TextfieldRow extends StatelessWidget {
//   const _TextfieldRow({
//     this.title,
//     this.enableCashIcon = true,
//     this.onChanged,
//     this.initAmount,
//     this.inputFormatters,
//     this.maxLines,
//     this.controller,
//     this.onTap,
//   });
//   final String? title;
//   final bool? enableCashIcon;
//   final void Function(String? s)? onChanged;
//   final double? initAmount;

//   final List<TextInputFormatter>? inputFormatters;
//   final int? maxLines;
//   final TextEditingController? controller;
//   final VoidCallback? onTap;

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Expanded(
//             child: Text(
//               title ?? '',
//               style: const TextStyle(
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           SizedBox(
//             width: 120,
//             height: textFieldHeight,
//             child: TextFormField(
//               controller: controller,
//               textAlign: TextAlign.right,
//               onTap: onTap,
//               onChanged: onChanged,
//               inputFormatters: inputFormatters,
//               maxLines: maxLines,
//               decoration: const InputDecoration(
//                 contentPadding: EdgeInsets.only(bottom: 12),
//               ),
//             ),
//           ),
//           width5,
//           enableCashIcon!
//               ? const Text(
//                   '৳',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 25,
//                   ),
//                 )
//               : const SizedBox(width: 11),
//         ],
//       ),
//     );
//   }
// }
