import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:skripsi_ui/module/boarding_page/controller/boarding_controller.dart';
import 'package:skripsi_ui/module/home/view/home.dart';

class Boarding extends GetView<BoardingController> {
  const Boarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final introKey = GlobalKey<IntroductionScreenState>();

    void _onIntroEnd(context) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => Home()),
      );
    }

    Widget _buildFullscrenImage() {
      return Image.asset(
        'assets/fullscreen.jpg',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
      );
    }

    Widget _buildImage(String assetName, [double width = 350]) {
      return Image.asset('assets/$assetName', width: width);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Boarding"),
      ),
    );
  }
}
