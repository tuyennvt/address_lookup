import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/core.dart';

part 'main_cubit.freezed.dart';
part 'main_state.dart';

@lazySingleton
class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState(navIndex: 0));

  void setNavIndex(int index) {
    emitSafely(state.copyWith(navIndex: index));
  }
}
