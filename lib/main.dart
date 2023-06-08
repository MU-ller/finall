import 'package:abayecommerce/controllers/cart_controller.dart';
import 'package:abayecommerce/controllers/popular_product_controller.dart';
import 'package:abayecommerce/controllers/recomended_product_controller.dart';

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
    Get.find<CartController>().getCartData();
    return GetBuilder<PopularProductController>(builder: (_) {
      return GetBuilder<RecommendedProductController>(builder: (_) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Abay Ecommerce",
          // home: const SplashScreen(),
          initialRoute: RouteHelper.getSplashPage(),
          getPages: RouteHelper.routes,
        );
      });
    });
  }
}
