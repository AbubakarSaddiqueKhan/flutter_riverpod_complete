import 'package:flutter_riverpod/flutter_riverpod.dart';

// If your value's need's to be changed in the future like counter whose values will be change then use the state provider .
// A provider that exposes a value that can be modified from outside.

// It can be useful for very simple states, like a filter or the currently selected item – which can then be combined with other providers or accessed in multiple screens.

final counterProvider = StateProvider<int>((ref) {
  // Provide it's initial value here .
  return 0;
});
