import 'package:abayecommerce/controllers/popular_product_controller.dart';
import 'package:abayecommerce/controllers/recomended_product_controller.dart';
import 'package:abayecommerce/pages/home/main_product_page.dart';
import 'package:abayecommerce/route/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:abayecommerce/helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Abay Ecommerce",
      home: MainProductPage(),
      // initialRoute: RouteHelper.intial,
      getPages: RouteHelper.routes,
    );
  }
}
