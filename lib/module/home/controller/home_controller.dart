import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:skripsi_ui/api/model/weather.dart';
import 'dart:convert';

class HomeController extends GetxController {
  var API = Uri.parse(
      'http://dataservice.accuweather.com/currentconditions/v1/202507?apikey=coC85AhOzG5pqAruH8xv3Xwo8sGAt9Zi');
  late WeatherModel weatherModel;
  var loading = true.obs;

  initial() async {
    print("aaa22");
    final response = await http.get(API);
    var jsonData = json.decode(response.body);
    weatherModel = WeatherModel.fromJson(jsonData[0]);
    loading.value = false;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initial();
  }
}
