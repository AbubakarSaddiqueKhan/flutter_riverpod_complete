import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/counter_page_riverpod/providers.dart';

class StateProviderCounterPageDesign extends ConsumerStatefulWidget {
  const StateProviderCounterPageDesign({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends ConsumerState<StateProviderCounterPageDesign> {
  @override
  Widget build(BuildContext context) {
    // Returns the value exposed by a provider and rebuild the widget when that value changes.
    int counterValue = ref.watch(counterProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter Page Riverpod Design"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                counterValue.toString(),
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        floatingActionButton: ButtonBar(
          children: [
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                // We mostly don't used the state provider because it will expose the value outside the class anywhere you want's .
                ref.read(counterProvider.notifier).state++;
              },
            ),
            const SizedBox(
              width: 50,
            ),
            FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () {
                // We mostly don't used the state provider because it will expose the value outside the class anywhere you want's .
                ref.read(counterProvider.notifier).state--;
              },
            ),
          ],
        ));
  }
}
