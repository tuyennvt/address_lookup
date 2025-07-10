// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';

extension CubitUtils<State> on Cubit<State> {
  void emitSafety(State state) {
    if (!isClosed) {
      emit(state);
    }
  }
}
