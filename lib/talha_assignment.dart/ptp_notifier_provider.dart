import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/talha_assignment.dart/product_total_price_notifier.dart';

import 'total_price_state.dart';

final ProductTotalPriceStateNotifierProvider =
    StateNotifierProvider<ProductTotalPriceNotifier, TotalPriceState>((ref) {
  return ProductTotalPriceNotifier();
});
