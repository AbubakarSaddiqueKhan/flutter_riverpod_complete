import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/stream_provider.dart/number_generator.dart';

final numberGeneratorProvider = Provider<NumberGenerator>((ref) {
  return NumberGenerator();
});
final numberStreamProvider = StreamProvider.family<int, int>((ref, value) =>
    ref.watch(numberGeneratorProvider).generate(startValue: value));
