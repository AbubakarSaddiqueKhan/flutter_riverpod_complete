import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/talha_assignment.dart/ptp_notifier_provider.dart';
import 'package:flutter_riverpod_practice/talha_assignment.dart/total_price_state.dart';

import 'total_price_model.dart';

class AssignmentPageDesign extends StatefulWidget {
  const AssignmentPageDesign({super.key});

  @override
  State<AssignmentPageDesign> createState() => _AssignmentPageDesignState();
}

List<ProductModel> products = [
  ProductModel(
    productPrice: 100,
    productQuantity: 0,
    totalPrice: 0,
    productName: "Cleaner",
    productImageUrl: "assets/images/cleaner.png",
  ),
  ProductModel(
    productPrice: 200,
    productQuantity: 0,
    totalPrice: 0,
    productName: "Cream",
    productImageUrl: "assets/images/cream.png",
  ),
  ProductModel(
    productPrice: 300,
    productQuantity: 0,
    totalPrice: 0,
    productName: "hoodie",
    productImageUrl: "assets/images/hoodie.png",
  ),
  ProductModel(
    productPrice: 400,
    productQuantity: 0,
    totalPrice: 0,
    productName: "Jacket",
    productImageUrl: "assets/images/jacket.png",
  ),
  ProductModel(
    productPrice: 500,
    productQuantity: 0,
    totalPrice: 0,
    productName: "Machine",
    productImageUrl: "assets/images/machine.png",
  ),
  ProductModel(
    productPrice: 600,
    productQuantity: 0,
    totalPrice: 0,
    productName: "Oil",
    productImageUrl: "assets/images/oil.png",
  ),
  ProductModel(
    productPrice: 700,
    productQuantity: 0,
    totalPrice: 0,
    productName: "Perfume",
    productImageUrl: "assets/images/perfume.png",
  ),
  ProductModel(
    productPrice: 800,
    productQuantity: 0,
    totalPrice: 0,
    productName: "Shirt",
    productImageUrl: "assets/images/shirt.png",
  ),
  ProductModel(
      productPrice: 900,
      productQuantity: 0,
      totalPrice: 0,
      productName: "Sneaker's",
      productImageUrl: "assets/images/sneakers.png")
];

// List<String> productName = [
//   "Cleaner",
//   "Cream",
//   "Hoodie",
//   "Jacket",
//   "Machine",
//   "Oil",
//   "Perfume",
//   "Shirt",
//   "Sneaker's"
// ];
// List<String> productImage = [
//   "assets/images/cleaner.png",
//   "assets/images/cream.png",
//   "assets/images/hoodie.png",
//   "assets/images/jacket.png",
//   "assets/images/machine.png",
//   "assets/images/oil.png",
//   "assets/images/perfume.png",
//   "assets/images/shirt.png",
//   "assets/images/sneakers.png"
// ];
// List<int> productPrice = [300, 400, 4800, 500, 420, 450, 440, 650, 200];

class _AssignmentPageDesignState extends State<AssignmentPageDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment Page Design"),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductListTile(index: index);
          },
        ),
      ),
    );
  }
}

class ProductListTile extends StatelessWidget {
  final int index;
  const ProductListTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: Container(
        height: 200,
        width: double.infinity,
        color: Color.fromARGB(random.nextInt(0xFF), random.nextInt(0xFF),
            random.nextInt(0xFF), random.nextInt(0xFF)),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(products[index].productImageUrl),
                          fit: BoxFit.contain)),
                )),
            Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Product Name : ${products[index].productName}"),
                          Text(
                            "Product Price : ${products[index].productPrice.toString()}",
                            style: const TextStyle(fontStyle: FontStyle.italic),
                          ),
                          SizedBox(
                            child: TotalProductQuantity(index: index),
                          )
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: TotalPrice(
                        index: index,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IncrementButton(index: index),
                          DecrementButton(
                            index: index,
                          )
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

Random random = Random();

class TotalPrice extends ConsumerWidget {
  final int index;
  const TotalPrice({super.key, required this.index});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var totalPrice = ref.watch(ProductTotalPriceStateNotifierProvider);
    if (totalPrice is TotalPriceUpdatedState) {
      if (totalPrice.index == index) {
        return Text(
          "Total Price : ${totalPrice.productModel.totalPrice}",
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        );
      }
      return Text(
        "Total Price : ${products[index].totalPrice}",
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      );
    }
    return const Text(
      "Total Price : 0",
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}

class TotalProductQuantity extends ConsumerWidget {
  const TotalProductQuantity({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var totalPrice = ref.watch(ProductTotalPriceStateNotifierProvider);
    if (totalPrice is TotalPriceUpdatedState) {
      if (totalPrice.index == index) {
        return Text(
          "Product Quantity : ${totalPrice.productModel.productQuantity}",
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        );
      }
      return Text(
        "Product Quantity  : ${products[index].productQuantity}",
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      );
    }
    return const Text(
      "Product Quantity : 0",
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}

class IncrementButton extends ConsumerWidget {
  final int index;
  const IncrementButton({super.key, required this.index});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var counterState =
        ref.read(ProductTotalPriceStateNotifierProvider.notifier);

    return InkWell(
      onTap: () {
        counterState.productQuantityIncrement(
          index,
        );
      },
      child: Container(
        width: 200,
        height: 60,
        color: Colors.amber,
        alignment: Alignment.center,
        child: const Text("Increment"),
      ),
    );
  }
}

class DecrementButton extends ConsumerWidget {
  const DecrementButton({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var counterState =
        ref.read(ProductTotalPriceStateNotifierProvider.notifier);

    return InkWell(
      onTap: () {
        counterState.productQuantityDecrement(index);
      },
      child: Container(
        width: 200,
        height: 60,
        color: Colors.amber,
        alignment: Alignment.center,
        child: const Text("Decrement"),
      ),
    );
  }
}
