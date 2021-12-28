import 'package:get/get.dart';
import 'package:skripsi_ui/module/boarding_page/binding/boarding_bindings.dart';
import 'package:skripsi_ui/module/boarding_page/view/boarding.dart';
import 'package:skripsi_ui/module/home/binding/home_binding.dart';
import 'package:skripsi_ui/module/home/view/home.dart';
import 'package:skripsi_ui/module/maps/binding/maps_bindings.dart';
import 'package:skripsi_ui/module/maps/view/maps.dart';
import 'package:skripsi_ui/module/menus/bindings/menus_bindings.dart';
import 'package:skripsi_ui/module/menus/view/menus.dart';
import 'package:skripsi_ui/module/page_item/binding/page_binding.dart';
import 'package:skripsi_ui/module/page_item/view/page.dart';
import 'package:skripsi_ui/module/splash/binding/splash_bindings.dart';
import 'package:skripsi_ui/module/splash/view/splash.dart';

part 'app_route.dart';

abstract class AppPages {
  AppPages._();

  static const INITIAL = Route.SPLASH;

  static final route = [
    GetPage(
      name: _Path.SPLASH,
      page: () => Splash(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Path.HOMESCREEN,
      page: () => Home(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Path.BOARDING,
      page: () => Boarding(),
      binding: BoardingBinding(),
    ),
    GetPage(
      name: _Path.MAPS,
      page: () => Maps(),
      binding: MapsBinding(),
    ),
    GetPage(
      name: _Path.PAGE,
      page: () => PageApp(),
      binding: PageBinding(),
    ),
    GetPage(
      name: _Path.MENUS,
      page: () => Menus(),
      binding: MenusBinding(),
    ),
  ];
}
