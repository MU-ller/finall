import 'dart:convert';

import 'package:abayecommerce/models/cart_model.dart';
import 'package:abayecommerce/utils/app_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartRepo {
  final SharedPreferences sharedPreverences;
  CartRepo({
    required this.sharedPreverences,
  });

  List<String> cart = [];
  void addToCartList(List<CartModel> cartList) {
    cart = [];
    cartList.forEach((element) => cart.add(jsonEncode(element)));

    sharedPreverences.setStringList(AppConstants.CART_LIST, cart);
    // print(sharedPreverences.getStringList(AppConstants.CART_LIST));
    getCartList();
  }

  List<CartModel> getCartList() {
    List<String> carts = [];
    if (sharedPreverences.containsKey(AppConstants.CART_LIST)) {
      carts = sharedPreverences.getStringList(AppConstants.CART_LIST)!;
      print("inside get cart list" + carts.toString());
    }
    List<CartModel> cartList = [];

    carts.forEach(
        (element) => cartList.add(CartModel.fromJson(jsonDecode(element))));

    return cartList;
  }
}
