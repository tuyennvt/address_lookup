import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';

import '../../config/theme/app_text_styles.dart';
import '../../generated/l10n.dart';
import '../utils/datetime_utils.dart';
import '../utils/string_utils.dart';
import 'clear_text_button.dart';

enum DateTimePickerMode { dateOnly, dateTime }

class AppDateTimeField extends StatefulWidget {
  const AppDateTimeField({
    super.key,
    this.initialValue,
    required this.labelText,
    required this.hintText,
    this.pickerMode = DateTimePickerMode.dateOnly,
    this.margin = EdgeInsets.zero,
    this.contentPadding,
    this.onChanged,
    this.validator,
    this.onSaved,
  });

  final DateTime? initialValue;
  final DateTimePickerMode pickerMode;
  final String labelText;
  final String? hintText;
  final EdgeInsets margin;
  final EdgeInsets? contentPadding;
  final ValueChanged<DateTime?>? onChanged;
  final FormFieldValidator<DateTime?>? validator;
  final FormFieldSetter<DateTime?>? onSaved;

  @override
  State<AppDateTimeField> createState() => _AppDateTimeFieldState();
}

class _AppDateTimeFieldState extends State<AppDateTimeField> {
  DateTime? _value;
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
    _setControllerText();
  }

  void _setControllerText() {
    if (_value == null) {
      _controller.text = '';
      return;
    }
    switch (widget.pickerMode) {
      case DateTimePickerMode.dateOnly:
        _controller.text = _value.formatDate('dd/MM/yyyy');
      case DateTimePickerMode.dateTime:
        _controller.text = _value.formatDateTime('dd/MM/yyyy HH:mm');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
            controller: _controller,
            decoration: InputDecoration(
              hintText: widget.hintText,
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (_value != null) ...{
                    ClearTextButton(
                      onPressed: () {
                        _controller.clear();
                        widget.onChanged?.call(null);
                      },
                    ),
                  },
                ],
              ),
            ),
            readOnly: true,
            onTap: () {
              switch (widget.pickerMode) {
                case DateTimePickerMode.dateOnly:
                  _pickDateOnly();
                case DateTimePickerMode.dateTime:
                  _pickDateTime();
              }
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: _validator,
            onSaved: _onSaved,
          ),
        ],
      ),
    );
  }

  String? _validator(String? value) {
    if (value == null) {
      return widget.validator?.call(null);
    }
    final dateTime = value.toDateTime(
      widget.pickerMode == DateTimePickerMode.dateOnly
          ? 'dd/MM/yyyy'
          : 'dd/MM/yyyy HH:mm',
    );
    return widget.validator?.call(dateTime);
  }

  void _onSaved(String? value) {
    if (value == null) {
      widget.onSaved?.call(null);
      return;
    }
    final dateTime = value.toDateTime(
      widget.pickerMode == DateTimePickerMode.dateOnly
          ? 'dd/MM/yyyy'
          : 'dd/MM/yyyy HH:mm',
    );
    widget.onSaved?.call(dateTime);
  }

  Future<void> _pickDateOnly() async {
    final date = await showDatePicker(
      context: context,
      initialDate: _value,
      firstDate: DateTime(1),
      lastDate: DateTime(9999),
      cancelText: S.of(context).common_cancel,
      confirmText: S.of(context).common_confirm,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
    );
    if (date == null) {
      return;
    }
    _value = date;
    _setControllerText();
    setState(() {});
    widget.onChanged?.call(_value);
  }

  Future<void> _pickDateTime() async {
    var date = await showDatePicker(
      context: context,
      initialDate: _value,
      firstDate: DateTime(1),
      lastDate: DateTime(9999),
      cancelText: S.of(context).common_cancel,
      confirmText: S.of(context).common_confirm,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
    );
    if (date == null) {
      return;
    }
    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_value ?? DateTime.now()),
      cancelText: S.of(context).common_cancel,
      confirmText: S.of(context).common_confirm,
      initialEntryMode: TimePickerEntryMode.dialOnly,
    );
    date = date.copyWith(hour: time?.hour ?? 0, minute: time?.minute ?? 0);
    setState(() => _value = date);
    _setControllerText();
    widget.onChanged?.call(_value);
  }
}
