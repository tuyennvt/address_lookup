import 'package:flutter/material.dart';

import 'navigation_button.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    this.navButton,
    this.title,
    this.centerTitle = false,
    this.actions = const <Widget>[],
    this.bottom,
    this.backgroundColor,
    this.height,
  });

  final NavigationButton? navButton;
  final Widget? title;
  final bool centerTitle;
  final List<Widget> actions;
  final PreferredSizeWidget? bottom;
  final Color? backgroundColor;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: navButton,
      title: title,
      titleSpacing: navButton != null ? 0 : 16,
      actions: actions,
      bottom: bottom,
      centerTitle: centerTitle,
      scrolledUnderElevation: 0,
      backgroundColor: backgroundColor,
      elevation: 0,
      forceMaterialTransparency: true,
      toolbarHeight: preferredSize.height,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
    height == null
        ? kToolbarHeight + (bottom != null ? bottom!.preferredSize.height : 0)
        : height!,
  );
}
