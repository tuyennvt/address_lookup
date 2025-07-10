import 'package:flutter/material.dart';

abstract class BasePage extends StatefulWidget {
  const BasePage({super.key});
}

abstract class BasePageState<T extends StatefulWidget>
    extends BasePageStateDelegate<T> {}

abstract class BasePageStateDelegate<T extends StatefulWidget>
    extends State<T> {
  @override
  void initState() {
    super.initState();
    initPage();
  }

  @override
  void dispose() {
    super.dispose();
    disposePage();
  }

  @override
  Widget build(BuildContext context) => buildPage(context);

  void initPage();

  void disposePage();

  Widget buildPage(BuildContext context);
}
