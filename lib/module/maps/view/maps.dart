// ignore_for_file: must_be_immutable, prefer_final_fields, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:skripsi_ui/module/maps/controller/maps_controller.dart';

// class Mapsa extends StatefulWidget {
//   const Mapsa({Key? key}) : super(key: key);

//   @override
//   _MapsStatea createState() => _MapsStatea();
// }

// class _MapsStatea extends State<Mapsa> {
//   Completer<GoogleMapController> _controller = Completer();

//   static final CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 14.4746,
//   );

//   static final CameraPosition _kLake = CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(37.43296265331129, -122.08832357078792),
//       tilt: 59.440717697143555,
//       zoom: 19.151926040649414);

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: GoogleMap(
//         mapType: MapType.hybrid,
//         initialCameraPosition: _kGooglePlex,
//         onMapCreated: (GoogleMapController controller) {
//           _controller.complete(controller);
//         },
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: _goToTheLake,
//         label: Text('To the lake!'),
//         icon: Icon(Icons.directions_boat),
//       ),
//     );
//   }

//   Future<void> _goToTheLake() async {
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//   }
// }

class Maps extends GetView<MapsController> {
  const Maps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maps Wisata"),
      ),
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: controller.kGooglePlex,
        onMapCreated: controller.onMapCreated,
        markers: {
          Marker(
            markerId: MarkerId("1"),
            position: LatLng(-7.610214, 111.532503),
            onTap: () {
              Get.defaultDialog(
                  title: "Test",
                  content: Column(
                    children: [
                      Text("data"),
                      ElevatedButton(
                          onPressed: () {}, child: Text("Navigation"))
                    ],
                  ));
            },
          ),
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: controller.goToTheLake,
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }
}
