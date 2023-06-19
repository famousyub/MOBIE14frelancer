import 'package:get/get.dart';

import '../controllers/authentifcation_controller.dart';

class AuthentifcationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthentifcationController>(
      () => AuthentifcationController(),
    );
  }
}
