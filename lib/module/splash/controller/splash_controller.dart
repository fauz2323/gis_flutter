import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final storage = FlutterSecureStorage();
  var first = "".obs;

  initial() async {
    first.value = await storage.read(key: "first") ?? "non";
    await Future.delayed(Duration(seconds: 4));
    if (first.value == "non") {
      await storage.write(key: 'first', value: 'value');
      Get.offAllNamed('/boarding');
    } else {
      Get.offAllNamed('/home');
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initial();
    print("object");
  }
}
