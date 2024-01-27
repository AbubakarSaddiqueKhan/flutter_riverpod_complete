import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod_practice/talha_assignment.dart/total_price_model.dart';

@immutable
abstract class TotalPriceState {
  const TotalPriceState();
}

@immutable
class TotalPriceInitialState extends TotalPriceState {}

@immutable
class TotalPriceUpdatedState extends TotalPriceState {
  final int index;
  final ProductModel productModel;
  const TotalPriceUpdatedState(
      {required this.index, required this.productModel});
}



// @immutable
// class TotalPriceUpdatedState extends TotalPriceState {
//   final int index;
//   final int totalPrice;
//   const TotalPriceUpdatedState({required this.index, required this.totalPrice});
// }
