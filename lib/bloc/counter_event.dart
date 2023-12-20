sealed class CounterEvent {}

/// we have to create an events in bloc, to create an event we have to create a class
final class CounterIncremented extends CounterEvent {
  // event
}

final class CounterDecremented extends CounterEvent {}
