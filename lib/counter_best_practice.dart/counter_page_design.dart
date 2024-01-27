import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/counter_best_practice.dart/counter_provider.dart';

class StateNotifierProviderCounterPageDesign extends StatefulWidget {
  const StateNotifierProviderCounterPageDesign({super.key});
  @override
  State<StateNotifierProviderCounterPageDesign> createState() =>
      _StateNotifierProviderCounterPageDesignState();
}

class _StateNotifierProviderCounterPageDesignState
    extends State<StateNotifierProviderCounterPageDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Page Riverpod Best Practices"),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [CounterText(), IncrementButton(), DecrementButton()],
        ),
      ),
    );
  }
}

class CounterText extends ConsumerWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var counterValue = ref.watch(CounterStateNotifierProvider);

    print("count value : ${counterValue.toString()}");

    return Text(
      counterValue.toString(),
      style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
    );
  }
}

class IncrementButton extends ConsumerWidget {
  const IncrementButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var counterState = ref.read(CounterStateNotifierProvider.notifier);

    return InkWell(
      onTap: () {
        print("incr");
        counterState.increment();
      },
      child: Container(
        width: 300,
        height: 60,
        alignment: Alignment.center,
        color: Colors.blue.shade300,
        child: const Text("Increment"),
      ),
    );
  }
}

class DecrementButton extends ConsumerWidget {
  const DecrementButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var counterState = ref.read(CounterStateNotifierProvider.notifier);

    return InkWell(
      onTap: () {
        counterState.decrement();
      },
      child: Container(
        width: 300,
        height: 60,
        alignment: Alignment.center,
        color: Colors.brown.shade400,
        child: const Text("Decrement"),
      ),
    );
  }
}
