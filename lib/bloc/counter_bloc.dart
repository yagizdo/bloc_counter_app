import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counterValue = 0;
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {});

    on<AddCounter>(((event, emit) {
      counterValue++;
      emit(AddCounterState(counterValue));
    }));
  }
}
