import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/talha_assignment.dart/assignment_design.dart';
import 'package:flutter_riverpod_practice/talha_assignment.dart/total_price_model.dart';
import 'package:flutter_riverpod_practice/talha_assignment.dart/total_price_state.dart';

class ProductTotalPriceNotifier extends StateNotifier<TotalPriceState> {
  // int productQuantity;
  // int totalProductPrice;
  // int productPrice;
  ProductModel productModel;
  ProductTotalPriceNotifier()
      : productModel = ProductModel(
            productPrice: 0,
            productQuantity: 0,
            productName: "",
            totalPrice: 0,
            productImageUrl: ''),
        super(TotalPriceInitialState());

  void productQuantityIncrement(int index) {
    products[index].productQuantity = products[index].productQuantity + 1;
    products[index].totalPrice =
        (products[index].productPrice * products[index].productQuantity);

    // productQuantity = productQuantity + 1;
    // totalProductPrice = productQuantity * (productPrice[index]);
    // productModel.productQuantity = state =
    state = TotalPriceUpdatedState(index: index, productModel: products[index]);
  }

  void productQuantityDecrement(int index) {
    if (products[index].productQuantity > 0) {
      products[index].productQuantity = products[index].productQuantity - 1;
      products[index].totalPrice =
          (products[index].productPrice * products[index].productQuantity);

      // productQuantity = productQuantity + 1;
      // totalProductPrice = productQuantity * (productPrice[index]);
      // productModel.productQuantity = state =
      TotalPriceUpdatedState(index: index, productModel: products[index]);
    }
    state = TotalPriceUpdatedState(index: index, productModel: products[index]);
  }
}
