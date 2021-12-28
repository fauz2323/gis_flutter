part of 'page_apps.dart';

abstract class Route {
  Route._();
  static const SPLASH = _Path.SPLASH;
}

abstract class _Path {
  static const SPLASH = '/splash';
  static const HOMESCREEN = '/home';
  static const BOARDING = '/boarding';
  static const MAPS = '/maps';
  static const PAGE = '/pages';
  static const MENUS = '/menus';
  static const DETAIL = '/details';
}
