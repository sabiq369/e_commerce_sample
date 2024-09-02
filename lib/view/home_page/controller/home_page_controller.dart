import 'package:get/get.dart';
import 'package:untitled/services/services.dart';
import 'package:untitled/view/home_page/model/home_page_model.dart';

class HomePageController extends GetxController {
  HomePageModel? homePageModel;
  RxBool onLoad = false.obs;

  apiCall() async {
    onLoad.value = true;
    var data = await Services().getHomePage();
    if (data != null) {
      if (data["success"] == 1) {
        homePageModel = HomePageModel.fromJson(data);
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
