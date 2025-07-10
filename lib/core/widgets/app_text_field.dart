import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../config/theme/app_text_styles.dart';
import 'clear_text_button.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.focusNode,
    this.controller,
    this.margin = EdgeInsets.zero,
    this.contentPadding,
    required this.labelText,
    required this.hintText,
    this.errorText,
    this.prefixIcon,
    this.suffixIcon,
    this.enabled = true,
    this.readOnly = false,
    this.obscureText = false,
    this.maxLine = 1,
    this.autofocus = false,
    this.textAlign = TextAlign.start,
    this.keyboardType,
    this.textInputAction,
    this.inputFormatters,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.validator,
    this.onSaved,
  });

  final FocusNode? focusNode;
  final TextEditingController? controller;
  final EdgeInsets margin;
  final EdgeInsets? contentPadding;
  final String labelText;
  final String hintText;
  final String? errorText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool enabled;
  final bool readOnly;
  final bool obscureText;
  final int? maxLine;
  final bool autofocus;
  final TextAlign textAlign;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode autovalidateMode;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late FocusNode _focusNode;
  late TextEditingController _controller;
  bool _focused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _controller = widget.controller ?? TextEditingController();
    _focused = _focusNode.hasFocus;
    _focusNode.addListener(_listenerFocus);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_listenerFocus);
    super.dispose();
  }

  void _listenerFocus() {
    if (_focusNode.hasFocus != _focused) {
      _focused = _focusNode.hasFocus;
      if (mounted) {
        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(widget.labelText, style: AppTextStyles.titleMedium()),
          TextFormField(
            focusNode: _focusNode,
            controller: _controller,
            textAlign: widget.textAlign,
            decoration: InputDecoration(
              hintText: widget.hintText,
              prefixIcon: widget.prefixIcon,
              enabled: widget.enabled,
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (_focused && !widget.readOnly && widget.enabled) ...{
                    ClearTextButton(
                      onPressed: () {
                        _controller.clear();
                        widget.onChanged?.call('');
                      },
                    ),
                  },
                  if (widget.suffixIcon != null) ...{
                    const SizedBox(width: 8),
                    widget.suffixIcon!,
                  },
                ],
              ),
            ),
            keyboardType: widget.keyboardType,
            textInputAction: widget.textInputAction,
            inputFormatters: widget.inputFormatters ?? [],
            enabled: widget.enabled,
            readOnly: widget.readOnly,
            obscureText: widget.obscureText,
            maxLines: widget.maxLine,
            autofocus: widget.autofocus,
            onTap: widget.onTap,
            onChanged: widget.onChanged,
            onFieldSubmitted: widget.onFieldSubmitted,
            autovalidateMode: widget.autovalidateMode,
            validator: widget.validator,
            onSaved: widget.onSaved,
          ),
        ],
      ),
    );
  }
}
