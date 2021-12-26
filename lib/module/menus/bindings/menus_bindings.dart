import 'package:get/get.dart';
import 'package:skripsi_ui/module/menus/controller/menus_controller.dart';

class MenusBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(MenusController());
  }
}
