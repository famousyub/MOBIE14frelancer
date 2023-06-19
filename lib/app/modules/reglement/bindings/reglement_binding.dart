import 'package:get/get.dart';

import '../controllers/reglement_controller.dart';

class ReglementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReglementController>(
      () => ReglementController(),
    );
  }
}
