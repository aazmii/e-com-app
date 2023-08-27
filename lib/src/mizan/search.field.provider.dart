// import 'dart:async';

// import 'package:flutter/material.dart'
//     show TextEditingController, TextSelection;
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import '../../../../utils/debouncer.dart';

// final searchController = TextEditingController();

// final searchProvider = NotifierProvider<SearchProvider, Search>(
//   SearchProvider.new,
// );

// class SearchProvider extends Notifier<Search> {
//   bool repeat = false;
//   Timer? timer;

//   @override
//   Search build() =>
//       Search(isSearching: false, isTyping: false, isBackspacePressed: false);

//   // final _delay = Delay(milliseconds: 800);
//   // Timer? _debounce;
//   void onClear() {
//     searchController.clear();
//     state = state.copyWith(isSearching: false);
//   }

//   void onSubmit(String? s) {
//     if (searchController.text.isEmpty) return;
//   }

//   void onChange(s) async {
//     if (!state.isSearching) state = state.copyWith(isSearching: true);
//     if (s!.isEmpty) {
//       state = state.copyWith(isSearching: false);
//       return;
//     }
//     timer?.cancel();
//     timer = Timer(const Duration(seconds: 1), () {
//       ref.notifyListeners();
//       searchController.selection = TextSelection(
//         baseOffset: 0,
//         extentOffset: searchController.text.length,
//       );
//     });
//   }

//   String clearWithChar() {
//     if (searchController.text.isEmpty) return '';
//     final lastChar = searchController.text[searchController.text.length - 1];
//     searchController.clear();
//     return lastChar;
//   }

//   // void onChange(String? s) async {
//   //   if (!state.isSearching) state = state.copyWith(isSearching: true);
//   //   if (s!.isEmpty) {
//   //     state = state.copyWith(isSearching: false);
//   //     return;
//   //   }
//   //   String missinChar = '';
//   //   if (repeat) {
//   //     missinChar = clearWithChar();
//   //     repeat = false;
//   //   }

//   //   if (missinChar.isNotEmpty) {
//   //     final updatedText = missinChar + searchController.text;
//   //     searchController.value = searchController.value.copyWith(
//   //       text: updatedText,
//   //       selection: TextSelection.collapsed(offset: updatedText.length),
//   //     );
//   //   }

//   //   _delay.run(() {
//   //     if (searchController.text.isEmpty) {
//   //       state = state.copyWith(isSearching: false);
//   //     }
//   //     ref.notifyListeners();
//   //     repeat = true;
//   //   });
//   // }

//   // void onChange(String? s) async {
//   //   if (!state.isSearching) state = state.copyWith(isSearching: true);
//   //   if (s!.isEmpty) {
//   //     state = state.copyWith(isSearching: false);
//   //     return;
//   //   }
//   //   String missinChar = '';
//   //   if (repeat) {
//   //     missinChar = clearWithChar();
//   //     repeat = false;
//   //   }
//   //   if (missinChar.isNotEmpty) {
//   //     final updatedText = missinChar + searchController.text;
//   //     searchController.value = searchController.value.copyWith(
//   //       text: updatedText,
//   //       selection: TextSelection.collapsed(offset: updatedText.length),
//   //     );
//   //   }

//   //   _delay.run(() {
//   //     if (searchController.text.isEmpty) {
//   //       state = state.copyWith(isSearching: false);
//   //     }
//   //     ref.notifyListeners();
//   //     repeat = true;
//   //   });
//   // }
// }

// class Search {
//   bool isSearching = false;
//   String searchTerm = '';
//   bool isTyping = false;
//   bool isBackspacePressed = false;
//   Search({
//     required this.isSearching,
//     required this.isTyping,
//     required this.isBackspacePressed,
//   });

//   Search copyWith({
//     String? searchTerm,
//     bool? isTyping,
//     bool? isSearching,
//     bool? isBackspacePressed,
//   }) {
//     return Search(
//       isSearching: isSearching ?? this.isSearching,
//       isTyping: isTyping ?? this.isTyping,
//       isBackspacePressed: isBackspacePressed ?? this.isBackspacePressed,
//     );
//   }
// }
