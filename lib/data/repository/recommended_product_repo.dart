// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:abayecommerce/data/api/api_client.dart';
import 'package:abayecommerce/utils/app_constant.dart';
import 'package:get/get.dart';

class RecommendedProductRepo extends GetxService {
  final ApiClient apiClient;

  RecommendedProductRepo({required this.apiClient});

  Future<Response> getRecommendedProductList() async {
    try {
      Response response =
          await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
      // print("Response Status Code: ${response.statusCode}");
      // print("Response Body: ${response.body}");

      return response;
    } catch (e) {
      print("Error: $e");
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
