class Product {
  late List<ProductModel> _products;
  List<ProductModel> get products => _products;

  Product({required products}) {
    _products = products;
  }

  Product.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      _products = <ProductModel>[];
      json['products'].forEach((v) {
        _products.add(ProductModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._products != null) {
      data['products'] = this._products.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductModel {
  int? id;
  String? name;
  String? categoryId;
  String? category;
  String? subcategory;
  String? subcategory1;
  String? slug;
  String? description;
  String? imageName;
  String? price;
  String? salePrice;
  String? createdAt;
  String? updatedAt;
  String? productquantity;
  String? buyingPrice;
  // Null videopath;

  ProductModel({
    this.id,
    this.name,
    this.categoryId,
    this.category,
    this.subcategory,
    this.subcategory1,
    this.slug,
    this.description,
    this.imageName,
    this.price,
    this.salePrice,
    this.createdAt,
    this.updatedAt,
    this.productquantity,
    this.buyingPrice,
    // this.videopath
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    categoryId = json['category_id'];
    category = json['category'];
    subcategory = json['subcategory'];
    subcategory1 = json['subcategory1'];
    slug = json['slug'];
    description = json['description'];
    imageName = json['image_name'];
    price = json['price'];
    salePrice = json['sale_price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    productquantity = json['productquantity'];
    buyingPrice = json['buying_price'];
    // videopath = json['videopath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['category_id'] = this.categoryId;
    data['category'] = this.category;
    data['subcategory'] = this.subcategory;
    data['subcategory1'] = this.subcategory1;
    data['slug'] = this.slug;
    data['description'] = this.description;
    data['image_name'] = this.imageName;
    data['price'] = this.price;
    data['sale_price'] = this.salePrice;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['productquantity'] = this.productquantity;
    data['buying_price'] = this.buyingPrice;
    // data['videopath'] = this.videopath;
    return data;
  }
}
