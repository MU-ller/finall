import 'package:abayecommerce/data/repository/recommended_product_repo.dart';
import 'package:abayecommerce/models/products_model.dart';
import 'package:get/get.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({required this.recommendedProductRepo});

  List<ProductModel> _recommendedProductList = [];
  List<ProductModel> get recommendedProductList => _recommendedProductList;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendedProductList() async {
    Response response =
        await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      print("got recommended products is called");
      if (response.statusCode == 200) {
        _recommendedProductList = [];
        _recommendedProductList
            .addAll(Product.fromJson(response.body).products);
        _isLoaded = true;
        // print(_recommendedProductList);
        update();
      } else {
        print("did not get products");
      }
    }
  }
}
