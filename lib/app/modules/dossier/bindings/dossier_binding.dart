import 'package:get/get.dart';

import '../controllers/dossier_controller.dart';

class DossierBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DossierController>(
      () => DossierController(),
    );
  }
}
