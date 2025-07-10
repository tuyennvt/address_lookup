import 'package:flutter/material.dart';

enum _NavigationButtonType { back, close }

class NavigationButton extends StatelessWidget {
  factory NavigationButton.back({required VoidCallback onPressed}) =>
      NavigationButton._(
        type: _NavigationButtonType.back,
        onNavigationPressed: onPressed,
      );

  factory NavigationButton.close({required VoidCallback onPressed}) =>
      NavigationButton._(
        type: _NavigationButtonType.close,
        onNavigationPressed: onPressed,
      );

  const NavigationButton._({
    required _NavigationButtonType type,
    required void Function() onNavigationPressed,
  }) : _onNavigationPressed = onNavigationPressed,
       _type = type;

  final _NavigationButtonType _type;
  final VoidCallback _onNavigationPressed;

  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (_type) {
      case _NavigationButtonType.back:
        child = const Icon(Icons.arrow_back_rounded);
      case _NavigationButtonType.close:
        child = const Icon(Icons.close_rounded);
    }
    return IconButton(onPressed: _onNavigationPressed, icon: child);
  }
}
