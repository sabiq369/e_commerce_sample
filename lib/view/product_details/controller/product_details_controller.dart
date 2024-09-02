import 'dart:developer';

import 'package:get/get.dart';
import 'package:untitled/services/services.dart';
import 'package:untitled/view/product_details/model/product_detail_model.dart';

class ProductDetailsController extends GetxController {
  ProductDetailsModel? productDetailsModel;
  RxBool onLoad = false.obs;

  apiCall() async {
    onLoad.value = true;
    var data = await Services().getProductDetails();
    if (data != null) {
      if (data["success"] == 1) {
        productDetailsModel = ProductDetailsModel.fromJson(data);
        onLoad.value = false;
      }
    }
  }

  @override
  void onInit() {
    apiCall();
    super.onInit();
  }
}
