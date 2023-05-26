import 'package:abayecommerce/pages/home/main_product_page.dart';
import 'package:abayecommerce/pages/home/recommended_product_detail.dart';
import 'package:abayecommerce/pages/product/popular_product_details.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String intial = "/";
  static const String popularProduct = "/popular-product";
  static const String recommendedProduct = "/recommended-product";

  static String getPopularProduct() => "$popularProduct";
  static String getRecommendedProduct() => "$recommendedProduct";

  static String getIntial() => "$getIntial";

  static List<GetPage> routes = [
    GetPage(
        name: intial,
        page: () {
          ;
          return MainProductPage();
        }),
    GetPage(
      name: getPopularProduct(),
      page: () {
        return PopularProductDetail();
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: getRecommendedProduct(),
      page: () {
        return RecommendedProductDetail();
      },
      transition: Transition.fadeIn,
    ),
    GetPage(name: recommendedProduct, page: () => RecommendedProductDetail()),
  ];
}
