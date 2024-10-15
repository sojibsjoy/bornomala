import 'package:get/get.dart';

import '../controllers/vowels_usage_controller.dart';

class VowelsUsageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VowelsUsageController>(
      () => VowelsUsageController(),
    );
  }
}
