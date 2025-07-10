import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClearTextButton extends StatelessWidget {
  const ClearTextButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(FontAwesomeIcons.solidCircleXmark),
      iconSize: 20,
    );
  }
}
