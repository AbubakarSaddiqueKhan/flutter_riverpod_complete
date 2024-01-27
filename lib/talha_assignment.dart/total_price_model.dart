class ProductModel {
  int productPrice;
  int productQuantity;
  int totalPrice;
  String productName;
  String productImageUrl;

  ProductModel(
      {required this.productPrice,
      required this.productQuantity,
      required this.totalPrice,
      required this.productName,
      required this.productImageUrl});
}
