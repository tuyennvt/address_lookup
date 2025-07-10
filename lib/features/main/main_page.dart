import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../index.dart';
import 'cubit/main_cubit.dart';

class MainPage extends BasePage {
  const MainPage._();

  static const routeName = '/';

  static MaterialPageRoute route() => MaterialPageRoute(
    builder: (_) => const MainPage._(),
    settings: const RouteSettings(name: routeName),
  );

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends BasePageState<MainPage> {
  final _mainCubit = getIt<MainCubit>();

  @override
  void initState() {
    super.initState();
    _mainCubit.init();
  }
  
  @override
  Widget buildPage(BuildContext context) {
    return const KeyboardDismissOnTap(
      child: Scaffold(
        appBar: AppBarWidget(),
        body: SafeArea(child: Center(child: LoadingView())),
      ),
    );
  }

  @override
  void disposePage() {
    // TODO: implement disposePage
  }

  @override
  void initPage() {
    // TODO: implement initPage
  }
}
