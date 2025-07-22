import 'dart:async';

import 'package:flutter/cupertino.dart';

import '../../../index.dart';
import '../cubit/search_cubit.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  Timer? _debounceTimer;
  static const _debounceDelay = Duration(milliseconds: 300);
  final _cubit = getIt<SearchCubit>();
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    widget.controller.removeListener(_onSearchChanged);
    super.dispose();
  }

  void _onSearchChanged() {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(_debounceDelay, () {
      final query = widget.controller.text.trim();
      if (query.isNotEmpty) {
        _cubit.search(query);
      } else {
        _cubit.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(48),
      borderSide: BorderSide.none,
    );
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
          fillColor: context.colorScheme.surfaceContainer,
          filled: true,
          border: border,
          enabledBorder: border,
          disabledBorder: border,
          focusedBorder: border,
          errorBorder: border,
          focusedErrorBorder: border,
          prefixIcon: const Icon(Icons.search),
          contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          suffixIcon: IconButton(
            onPressed: () {
              widget.controller.clear();
              _cubit.clear();
              _debounceTimer?.cancel();
            },
            icon: const Icon(CupertinoIcons.clear_circled_solid, size: 20),
          ),
          hintText: 'Nhập địa chỉ...',
        ),
      ),
    );
  }
}
