import 'package:get/get.dart';

import '../controllers/parametrage_controller.dart';

class ParametrageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ParametrageController>(
      () => ParametrageController(),
    );
  }
}
