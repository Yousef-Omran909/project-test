part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class IncEvent extends CounterEvent {}

class DecEvent extends CounterEvent {}

class ResetEvent extends CounterEvent {}
