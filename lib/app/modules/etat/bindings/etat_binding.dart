import 'package:get/get.dart';

import '../controllers/etat_controller.dart';

class EtatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EtatController>(
      () => EtatController(),
    );
  }
}
