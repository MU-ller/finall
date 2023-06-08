import 'package:abayecommerce/cart/cart_page.dart';
import 'package:abayecommerce/pages/home/home_page.dart';
import 'package:abayecommerce/pages/home/recommended_product_detail.dart';
import 'package:abayecommerce/pages/product/popular_product_details.dart';
import 'package:abayecommerce/pages/splash/splash_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String intial = "/";
  static const String popularProduct = "/popular-product";
  static const String recommendedProduct = "/recommended-product";
  static const String cartPage = "/cart-page";
  static const String splashPage = "/splash-page";

  static String getSplashPage() => '$splashPage';
  static String getIntial() => "$intial";
  static String getPopularProduct(int pageId, String page) =>
      "$popularProduct?pageId=$pageId&page=$page";
  static String getRecommendedProduct(int pageId, String page) =>
      "$recommendedProduct?pageId=$pageId&page=$page";
  static String getCartPage() => "$cartPage";

  static List<GetPage> routes = [
    GetPage(name: splashPage, page: () => const SplashScreen()),
    GetPage(
        name: intial,
        page: () {
          return const HomePage();
        }),
    GetPage(
      name: popularProduct,
      page: () {
        var pageId = Get.parameters['pageId'];
        var page = Get.parameters['page'];

        return PopularProductDetail(pageId: int.parse(pageId!), page: page!);
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: recommendedProduct,
      page: () {
        var pageId = Get.parameters['pageId'];
        var page = Get.parameters['page'];

        return RecommendedProductDetail(
            pageId: int.parse(pageId!), page: page!);
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: cartPage,
      page: () {
        var pageId = Get.parameters['pageId'];

        return CartPage();
      },
      transition: Transition.fadeIn,
    ),
  ];
}
