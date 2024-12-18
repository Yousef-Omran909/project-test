import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/bloc_state_mangment/bloc/counter_bloc.dart';

import 'counter_stateBas.dart';

class CounterCubit extends Cubit<CounterStateBas> {
  CounterCubit() : super(TeamAState());
  int tA = 0;
  int tB = 0;
  void Inc({required int number, required String team}) {
    if (team == "A") {
      tA += number;
      emit(TeamAState());
    } else {
      tB += number;
      emit(TeamBState());
    }
  }
}
