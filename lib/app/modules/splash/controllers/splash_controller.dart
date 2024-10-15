import 'package:bornomala/app/data/imgs.dart';
import 'package:bornomala/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  String splashImg = Imgs.splashImg;
  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offNamed(Routes.HOME),
    );
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
