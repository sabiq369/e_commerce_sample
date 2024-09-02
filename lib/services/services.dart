import 'package:dio/dio.dart';
import 'package:untitled/utils/api.dart';

class Services {
  final Dio _dio = Dio();

  getHomePage() async {
    try {
      var response = await _dio.post(Api.homePage, queryParameters: {
        "id": "bDy",
        "token": "XhKAGNv5HeDmAqG1puY73PBFpecPhsAwZZXRXhFf",
      });
      print('||||||||||||| response |||||||||||');
      print(response.data);
      if (response.statusCode == 200) {
        return response.data;
      }
    } catch (e) {}
  }

  getProductDetails() async {
    try {
      var response = await _dio.post(Api.productDetails, queryParameters: {
        "id": "bDy",
        "token": "XhKAGNv5HeDmAqG1puY73PBFpecPhsAwZZXRXhFf",
      });
      print('||||||||||||| response |||||||||||');
      print(response.data);
      if (response.statusCode == 200) {
        return response.data;
      }
    } catch (e) {
      print('|||||||||| errror ||||||||||');
      print(e.toString());
    }
  }
}
