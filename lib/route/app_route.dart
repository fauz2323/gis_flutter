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
}
