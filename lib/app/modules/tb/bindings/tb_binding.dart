import 'package:get/get.dart';

import '../controllers/tb_controller.dart';

class TbBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TbController>(
      () => TbController(),
    );
  }
}
