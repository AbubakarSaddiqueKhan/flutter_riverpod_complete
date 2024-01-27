class NumberGenerator {
  Stream<int> generate({int startValue = 0}) async* {
    for (var i = startValue; i < 5000; i++) {
      await Future.delayed(const Duration(milliseconds: 500));
      yield i;
    }
  }
}
