import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/stream_provider.dart/providers.dart';

class NumberPage extends ConsumerStatefulWidget {
  const NumberPage({super.key});

  @override
  ConsumerState<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends ConsumerState<NumberPage> {
  @override
  Widget build(BuildContext context) {
    var asyncValue = ref.watch(numberStreamProvider(200));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Page'),
        actions: [
          IconButton(
              onPressed: () {
                ref.invalidate(numberStreamProvider);
              },
              icon: const Icon(Icons.refresh_outlined))
        ],
      ),
      body: asyncValue.when(
          skipLoadingOnRefresh: false,
          skipLoadingOnReload: false,
          data: (value) => Center(
                child: Text(
                  value.toString(),
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
          error: (obj, stackTrace) => const Center(
                child: Text('Error'),
              ),
          loading: () => const Center(
                child: CircularProgressIndicator(),
              )),
    );
  }
}
