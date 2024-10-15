import 'package:get/get.dart';

import '../controllers/poem_list_controller.dart';

class PoemListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PoemListController>(
      () => PoemListController(),
    );
  }
}
