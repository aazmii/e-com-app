// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
 
// class SearchField extends ConsumerWidget {
//   const SearchField({super.key});

//   @override
//   Widget build(BuildContext context, ref) {
//     final notifier = ref.watch(searchProvider.notifier);
//     if (context.height <= 120) return emptyWidget;
//     return TextField(
//       controller: searchController,
//       onSubmitted: notifier.onSubmit,
//       focusNode: ref.watch(nodeProvider(NodeProvider.searchNode)),
//       onChanged: notifier.onChange,
//       decoration: InputDecoration(
//         contentPadding: const EdgeInsets.only(top: 14, left: 5),
//         hintText: 'Search by serial / produnct / category',
//         filled: true,
//         focusedBorder: InputBorder.none,
//         enabledBorder: InputBorder.none,
//         border: InputBorder.none,
//         suffixIcon: Consumer(
//           builder: (context, ref, child) {
//             return Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 if (ref.watch(searchProvider).isSearching)
//                   IconButton(
//                     onPressed: notifier.onClear,
//                     icon: const Icon(
//                       FontAwesomeIcons.x,
//                       size: 18,
//                     ),
//                   ),
//                 const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 10.0),
//                   child: Icon(
//                     FontAwesomeIcons.magnifyingGlass,
//                     size: 18,
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
