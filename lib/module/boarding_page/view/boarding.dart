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

    const bodyStyle = TextStyle(fontSize: 19.0);
    // ignore: unnecessary_const
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return SafeArea(
      child: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: [
          PageViewModel(
            title: "Fractional shares 1",
            body:
                "Instead of having to buy an entire share, invest any amount you want.",
            image: Image.network(
                "https://i.pinimg.com/originals/15/f6/a3/15f6a3aac562ee0fadbbad3d4cdf47bc.jpg"),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Fractional shares 2",
            body:
                "Instead of having to buy an entire share, invest any amount you want.",
            image: Image.network(
                "https://i.pinimg.com/originals/15/f6/a3/15f6a3aac562ee0fadbbad3d4cdf47bc.jpg"),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Fractional shares 4",
            body:
                "Instead of having to buy an entire share, invest any amount you want.",
            image: Image.network(
                "https://i.pinimg.com/originals/15/f6/a3/15f6a3aac562ee0fadbbad3d4cdf47bc.jpg"),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Fractional shares 3",
            body:
                "Instead of having to buy an entire share, invest any amount you want.",
            image: Image.network(
                "https://i.pinimg.com/originals/15/f6/a3/15f6a3aac562ee0fadbbad3d4cdf47bc.jpg"),
            decoration: pageDecoration,
            reverse: true,
          ),
        ],
        onDone: () => Get.offNamed("/home"),
        onSkip: () => Get.offNamed("/home"),
        showDoneButton: true,
        showSkipButton: true,
        skipFlex: 0,
        nextFlex: 0,
        skip: Text("Skip"),
        next: Icon(Icons.arrow_forward_ios),
        done: Text("Done"),
      ),
    );
  }
}
