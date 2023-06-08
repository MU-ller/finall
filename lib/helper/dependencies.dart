import 'package:abayecommerce/controllers/cart_controller.dart';
import 'package:abayecommerce/controllers/popular_product_controller.dart';
import 'package:abayecommerce/controllers/recomended_product_controller.dart';
import 'package:abayecommerce/data/api/api_client.dart';
import 'package:abayecommerce/data/repository/cart_repo.dart';
import 'package:abayecommerce/data/repository/popular_product_repo.dart';
import 'package:abayecommerce/data/repository/recommended_product_repo.dart';
import 'package:abayecommerce/utils/app_constant.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> init() async {
  final sharedPreverences = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreverences);
  // api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  // repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  // popularcontrollers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));

  Get.lazyPut(() => CartRepo(sharedPreverences: Get.find()));

  // recommendedcontrollers
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));

  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}
