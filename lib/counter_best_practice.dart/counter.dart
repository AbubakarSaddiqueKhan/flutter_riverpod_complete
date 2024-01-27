import 'package:flutter_riverpod/flutter_riverpod.dart';

// i ) make a custom notifier that extend's the state notifier class .
// An observable class that stores a single immutable [state].
// It can be used as a drop-in replacement to ChangeNotifier or other equivalent objects like Bloc.
// It particularity is that it tries to be simple, yet promote immutable data.

class CounterNotifier extends StateNotifier<int> {
  // [StateNotifier] is designed to be subclassed. We first need to pass an initial value to the super constructor, to define the initial state of our object.
  final int count;
  CounterNotifier({this.count = 0}) : super(count);
  // Now make all of the possible state that can be performed like in the case of the counter we only have two possibilities

  // We can then expose methods on our [StateNotifier] to allow other objects to modify the counter:

  void increment() {
    state = ++state;
  }

  void decrement() {
    state = state - 1;
  }
}
