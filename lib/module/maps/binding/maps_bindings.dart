import 'package:get/get.dart';
import 'package:skripsi_ui/module/maps/controller/maps_controller.dart';

class MapsBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(MapsController());
  }
}
