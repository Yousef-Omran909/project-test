part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [];
}

class CounterInitial extends CounterState {}

class CounterValueChangeState extends CounterState {
  const CounterValueChangeState({required this.counter});
  final int counter;

  @override
  // TODO: implement props
  List<Object> get props => [counter];
}
