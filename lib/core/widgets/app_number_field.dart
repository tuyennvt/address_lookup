import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import '../../config/environment/app_config.dart';
import '../utils/crashlytics_wrapper.dart';
import '../utils/string_utils.dart';
import 'app_text_field.dart';

class AppNumberField extends StatefulWidget {
  const AppNumberField({
    super.key,
    this.focusNode,
    this.controller,
    this.margin = EdgeInsets.zero,
    this.contentPadding,
    this.allowedNegative = false,
    this.allowedDecimal = false,
    this.formatNumber = true,
    required this.labelText,
    required this.hintText,
    this.suffixIcon,
    this.textInputAction = TextInputAction.done,
    this.enabled = true,
    this.readOnly = false,
    this.autofocus = false,
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
  final bool allowedNegative;
  final bool allowedDecimal;
  final bool formatNumber;
  final String labelText;
  final String hintText;
  final Widget? suffixIcon;
  final TextInputAction textInputAction;
  final bool enabled;
  final bool readOnly;
  final bool autofocus;
  final VoidCallback? onTap;
  final ValueChanged<num?>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldValidator<num?>? validator;
  final FormFieldSetter<num?>? onSaved;

  @override
  State<AppNumberField> createState() => _AppNumberFieldState();
}

class _AppNumberFieldState extends State<AppNumberField> {
  late final TextEditingController _controller;
  final _appConfig = AppConfig();
  late final String _decimalSep;
  late final String _groupSep;

  @override
  void initState() {
    super.initState();
    _initializeController();
    _initializeSeparators();
  }

  void _initializeController() {
    _controller = widget.controller ?? TextEditingController();
  }

  void _initializeSeparators() {
    final decimalFormatter = NumberFormat.decimalPattern(
      _appConfig.deviceLocale.toString(),
    );
    _decimalSep = decimalFormatter.symbols.DECIMAL_SEP;
    _groupSep = decimalFormatter.symbols.GROUP_SEP;
  }

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      focusNode: widget.focusNode,
      controller: _controller,
      margin: widget.margin,
      contentPadding: widget.contentPadding,
      labelText: widget.labelText,
      hintText: widget.hintText,
      suffixIcon: widget.suffixIcon,
      keyboardType: const TextInputType.numberWithOptions(
        signed: true,
        decimal: true,
      ),
      textInputAction: widget.textInputAction,
      inputFormatters: [
        if (widget.formatNumber)
          _NumberInputFormatter(
            allowedNegative: widget.allowedNegative,
            allowedDecimal: widget.allowedDecimal,
            decimalSep: _decimalSep,
            groupSep: _groupSep,
          ),
      ],
      enabled: widget.enabled,
      readOnly: widget.readOnly,
      autofocus: widget.autofocus,
      onTap: widget.onTap,
      onChanged: (value) {
        try {
          final number = _parseNumber(value);
          widget.onChanged?.call(number);
        } catch (error, stackTrace) {
          CrashlyticsWrapper.log(error, stack: stackTrace);
        }
      },
      onFieldSubmitted: widget.onFieldSubmitted,
      validator: (value) {
        final number = _parseNumber(value);
        return widget.validator?.call(number);
      },
      onSaved: (value) {
        final number = _parseNumber(value);
        widget.onSaved?.call(number);
      },
    );
  }

  num? _parseNumber(String? text) {
    final number =
        text?.replaceAll(_groupSep, '').replaceAll(_decimalSep, '.').toNumber();
    return number;
  }
}

class _NumberInputFormatter extends TextInputFormatter {
  _NumberInputFormatter({
    required this.allowedNegative,
    required this.allowedDecimal,
    required this.decimalSep,
    required this.groupSep,
  });

  final bool allowedNegative;
  final bool allowedDecimal;
  final String decimalSep;
  final String groupSep;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) {
      return newValue;
    }

    if (newValue.text.length == 1 &&
        newValue.text[0] == '-' &&
        allowedNegative) {
      return newValue;
    }

    final numberText = newValue.text.replaceAll(_numberRegExp, '');

    final numberTextSplits = numberText.split(decimalSep);

    if (numberTextSplits.length > 2) {
      return oldValue;
    }

    if (newValue.text.endsWith(decimalSep) && allowedDecimal) {
      return newValue;
    }

    final number = numberText.replaceAll(decimalSep, '.').toNumber();
    if (number == null) {
      return oldValue;
    }

    final integerPart = numberTextSplits.first;
    var numberFormatted = NumberFormat(
      '#,###',
      AppConfig().deviceLocale.toString(),
    ).format(integerPart.toNumber());
    if (numberTextSplits.length > 1) {
      numberFormatted = '$numberFormatted$decimalSep${numberTextSplits.last}';
    }

    return TextEditingValue(
      text: numberFormatted,
      selection: TextSelection.collapsed(offset: numberFormatted.length),
    );
  }

  RegExp get _numberRegExp => RegExp(
    '[^0-9${allowedDecimal ? decimalSep : ''}${allowedNegative ? '-' : ''}]',
  );
}
