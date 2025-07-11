import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../index.dart';
import 'cubit/main_cubit.dart';
import 'widgets/old_district_selection_widget.dart';
import 'widgets/old_province_selection_widget.dart';
import 'widgets/old_ward_selection_widget.dart';

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
  final _oldProvinceController = TextEditingController();
  final _oldDistrictController = TextEditingController();
  final _oldWardController = TextEditingController();
  @override
  Widget buildPage(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        appBar: const AppBarWidget(title: Text('Main Page')),
        body: MultiBlocListener(
          listeners: [
            BlocListener<MainCubit, MainState>(
              bloc: _mainCubit,
              listenWhen: (previous, current) =>
                  previous.selectedOldProvince != current.selectedOldProvince,
              listener: (context, state) {
                _oldDistrictController.clear();
                _oldWardController.clear();
              },
            ),
            BlocListener<MainCubit, MainState>(
              bloc: _mainCubit,
              listenWhen: (previous, current) =>
                  previous.selectedOldDistrict != current.selectedOldDistrict,
              listener: (context, state) {
                _oldWardController.clear();
              },
            ),
          ],
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 24,
                children: [
                  OldProvinceSelectionWidget(
                    controller: _oldProvinceController,
                  ),
                  OldDistrictSelectionWidget(controller: _oldDistrictController),
                  OldWardSelectionWidget(controller: _oldWardController),
                  // const NewAddressListWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void disposePage() {}

  @override
  void initPage() {
    _mainCubit.loadOldProvinces();
  }
}
