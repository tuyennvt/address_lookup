import 'package:flutter/material.dart';

import '../../config/theme/app_colors.dart';

class AppDropdownField<T> extends StatelessWidget {
  const AppDropdownField({
    super.key,
    required this.items,
    required this.itemLabelBuilder,
    this.value,
    this.labelText = '',
    this.hintText = '',
    this.enabled = true,
    this.readOnly = false,
    this.margin = EdgeInsets.zero,
    required this.onChanged,
  });

  final List<T> items;
  final String Function(T item) itemLabelBuilder;
  final T? value;
  final String labelText;
  final String hintText;
  final bool enabled;
  final bool readOnly;
  final EdgeInsets margin;
  final ValueChanged<T?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: DropdownMenu<T>(
        initialSelection: value,
        requestFocusOnTap: false,
        label: Text(labelText),
        onSelected: onChanged,
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: const TextStyle(fontWeight: FontWeight.w500),
          floatingLabelStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
          contentPadding: const EdgeInsets.fromLTRB(18, 20, 18, 12),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: context.colorScheme.outlineVariant),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        expandedInsets: EdgeInsets.zero,
        dropdownMenuEntries:
            items
                .map(
                  (e) => DropdownMenuEntry(
                    value: e,
                    label: itemLabelBuilder.call(e),
                  ),
                )
                .toList(),
      ),
    );
  }
}
