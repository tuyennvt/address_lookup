import '../../index.dart';
import '../main/views/main_page.dart';
import 'cubit/splash_cubit.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _cubit = getIt<SplashCubit>();

  @override
  void initState() {
    super.initState();
    _cubit.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<SplashCubit, SplashState>(
          bloc: _cubit,
          listenWhen: (previous, current) =>
              previous.initDataStatus != current.initDataStatus,
          listener: (context, state) {
            state.initDataStatus.whenOrNull(
              loaded: () =>
                  context.pushAndRemoveUntil(MainPage.route(), (_) => false),
            );
          },
          child: BlocSelector<SplashCubit, SplashState, LoadStatus>(
            bloc: _cubit,
            selector: (state) => state.initDataStatus,
            builder: (context, initDataStatus) => initDataStatus.when(
              initial: () => const SizedBox(),
              loading: () =>
                  const LoadingView(message: 'Đang khởi tạo dữ liệu...'),
              error: (exception) => ExceptionView(
                exception: exception,
                onRetryPressed: _cubit.init,
              ),
              loaded: () => const SizedBox(),
            ),
          ),
        ),
      ),
    );
  }
}
