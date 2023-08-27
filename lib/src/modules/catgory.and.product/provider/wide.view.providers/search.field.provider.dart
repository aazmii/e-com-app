import 'dart:async';

import 'package:flutter/material.dart'
    show TextEditingController, TextSelection;
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchController = TextEditingController();

final searchProvider = NotifierProvider<SearchProvider, Search>(
  SearchProvider.new,
);

class SearchProvider extends Notifier<Search> {
  Timer? timer;

  @override
  Search build() => Search(
        isSearching: false,
        isTyping: false,
      );

  void onClear() {
    searchController.clear();
    state = state.copyWith(isSearching: false);
  }

  void onSubmit(String? s) {
    if (searchController.text.isEmpty) return;
  }

  void onChange(s) async {
    if (!state.isSearching) state = state.copyWith(isSearching: true);
    if (s!.isEmpty) {
      state = state.copyWith(isSearching: false);
      return;
    }
    timer?.cancel();
    timer = Timer(const Duration(seconds: 1), () {
      ref.notifyListeners();
      searchController.selection = TextSelection(
        baseOffset: 0,
        extentOffset: searchController.text.length,
      );
    });
  }
}

class Search {
  bool isSearching = false;
  String searchTerm = '';
  bool isTyping = false;
  Search({
    required this.isSearching,
    required this.isTyping,
  });

  Search copyWith({
    String? searchTerm,
    bool? isTyping,
    bool? isSearching,
  }) {
    return Search(
      isSearching: isSearching ?? this.isSearching,
      isTyping: isTyping ?? this.isTyping,
    );
  }
}
