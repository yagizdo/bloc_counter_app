part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class AddCounterState extends CounterState {
  final int counterText;
  AddCounterState(this.counterText);
}
