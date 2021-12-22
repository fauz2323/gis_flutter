import 'package:get/get.dart';
import 'package:skripsi_ui/module/boarding_page/controller/boarding_controller.dart';

class BoardingBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(BoardingController());
  }
}
