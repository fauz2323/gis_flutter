// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'dart:async';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsController extends GetxController {
  late GoogleMapController mapController;
  Completer<GoogleMapController> _controller = Completer();
  var kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  var kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(-7.610214, 111.532503),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  Future<void> goToTheLake() async {
    print("object");
    mapController.animateCamera(CameraUpdate.newCameraPosition(kLake));
  }

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
}
