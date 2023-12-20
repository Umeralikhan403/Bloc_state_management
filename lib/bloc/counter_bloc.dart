import 'package:bloc_state_management/bloc/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  // we have to create an event handlers and they can not be functions, to create event handler just create a body of the constructor below
  CounterBloc() : super(0) {
    /// what event we wanted to capture, like for example i want to capture the CounterIncremented Event
    on<CounterIncremented>((event, emit) {
      // in bloc we can not use emit outside these event handlers
      emit(state + 1);
    });

    on<CounterDecremented>((event, emit) {
      if (state == 0) {
        return;
      }
      emit(state - 1);
    });
  }
}
