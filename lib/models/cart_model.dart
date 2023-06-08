import 'package:abayecommerce/models/products_model.dart';

class CartModel {
  int? id;
  String? name;
  String? categoryId;
  String? slug;
  String? imageName;
  String? price;
  int? quantity;
  // String? productquantity;
  bool? isExist;
  String? time;
  ProductModel? product;

  CartModel(
      {this.id,
      this.name,
      this.categoryId,
      this.slug,
      this.imageName,
      this.price,
      // this.productquantity,
      this.quantity,
      required this.isExist,
      this.time,
      this.product});

  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    categoryId = json['category_id'];
    slug = json['slug'];
    imageName = json['image_name'] ?? '';
    price = json['price'];
    // productquantity = json['productquantity'];
    quantity = json['quantity'];
    isExist = json['isExist'];
    time = json['time'];
    product = ProductModel.fromJson(json['product']);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "name": this.name,
      "categoryId": this.categoryId,
      "slug": this.slug,
      "imageName": this.imageName,
      "price": this.price,
      //  'productquantity' : this.productquantity,
      "quantity": this.quantity,
      "isExist": this.isExist,
      "time": this.time,
      "product": this.product!.toJson()
    };
  }
}
