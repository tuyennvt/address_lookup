import '../../../index.dart';
import '../../search/views/search_view.dart';
import '../cubit/main_cubit.dart';

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
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(height: 0),
      body: SafeArea(
        child: IndexedStack(children: [const SearchView(), Container()]),
      ),
      bottomNavigationBar: BlocSelector<MainCubit, MainState, int>(
        bloc: _mainCubit,
        selector: (state) => state.navIndex,
        builder: (context, navIndex) => NavigationBar(
          selectedIndex: navIndex,
          destinations: [
            const NavigationDestination(
              icon: Icon(Icons.search_rounded),
              label: 'Tìm kiếm',
            ),
            const NavigationDestination(
              icon: Icon(Icons.swap_horiz_rounded),
              label: 'Chuyển đổi file',
            ),
          ],
          onDestinationSelected: _mainCubit.setNavIndex,
        ),
      ),
    );
  }

  @override
  void disposePage() {}

  @override
  void initPage() {}
}
