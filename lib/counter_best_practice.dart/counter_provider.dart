import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/counter_best_practice.dart/counter.dart';

// Creates a [StateNotifier] and exposes its current state.
final CounterStateNotifierProvider =
    StateNotifierProvider<CounterNotifier, int>((ref) {
  return CounterNotifier();
});
