// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:abayecommerce/data/api/api_client.dart';
import 'package:abayecommerce/utils/app_constant.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    try {
      Response response =
          await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
      print("Response Status Code: ${response.statusCode}");
      // print("Response Body: ${response.body}");

      return response;
    } catch (e) {
      print("Error: $e");
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
