import 'package:get/get.dart';
import 'package:skripsi_ui/module/page_item/controller/page_controller.dart';

class PageBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(PagesController());
  }
}
