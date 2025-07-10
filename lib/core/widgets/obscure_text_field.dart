import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'app_text_field.dart';

class ObscureTextField extends StatefulWidget {
  const ObscureTextField({
    super.key,
    this.focusNode,
    this.controller,
    this.margin = EdgeInsets.zero,
    this.contentPadding,
    this.labelText = '',
    this.hintText = '',
    this.errorText,
    this.prefixIcon,
    this.enabled = true,
    this.readOnly = false,
    this.maxLine = 1,
    this.autofocus = false,
    this.textAlign = TextAlign.start,
    this.keyboardType,
    this.textInputAction,
    this.inputFormatters,
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
  final bool enabled;
  final bool readOnly;
  final int? maxLine;
  final bool autofocus;
  final TextAlign textAlign;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;

  @override
  State<ObscureTextField> createState() => _ObscureTextFieldState();
}

class _ObscureTextFieldState extends State<ObscureTextField> {
  var _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      focusNode: widget.focusNode,
      controller: widget.controller,
      margin: widget.margin,
      contentPadding: widget.contentPadding,
      labelText: widget.labelText,
      hintText: widget.hintText,
      errorText: widget.errorText,
      prefixIcon: widget.prefixIcon,
      suffixIcon: IconButton(
        icon: Icon(
          _obscureText
              ? FontAwesomeIcons.solidEye
              : FontAwesomeIcons.solidEyeSlash,
        ),
        onPressed: () {
          setState(() => _obscureText = !_obscureText);
        },
        iconSize: 20,
      ),
      enabled: widget.enabled,
      readOnly: widget.readOnly,
      obscureText: _obscureText,
      maxLine: widget.maxLine,
      autofocus: widget.autofocus,
      textAlign: widget.textAlign,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      inputFormatters: widget.inputFormatters,
      onTap: widget.onTap,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onFieldSubmitted,
      validator: widget.validator,
      onSaved: widget.onSaved,
    );
  }
}
