import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      if (event is IncEvent) {
        counter = counter + 1;
        print("$counter  dassaasa");
        emit(CounterValueChangeState(counter: counter));
      } else if (event is DecEvent) {
        counter = counter - 1;
        print("$counter  --------------");
        emit(CounterValueChangeState(counter: counter));
      } else {
        counter = 0;
        print("$counter  0000000000");
        emit(CounterValueChangeState(counter: counter));
      }
    });
  }
}
