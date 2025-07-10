import 'package:flutter/material.dart';

class ProcessingDialog extends StatelessWidget {
  const ProcessingDialog({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Container(
        alignment: Alignment.center,
        color: Colors.black38,
        child: const CircularProgressIndicator(),
      ),
    );
  }
}
