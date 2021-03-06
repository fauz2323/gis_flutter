// ignore_for_file: prefer_const_constructors, ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:skripsi_ui/module/home/controller/home_controller.dart';
import 'package:skripsi_ui/module/page_item/view/widget/list_widget.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff10347c),
      body: SafeArea(
          child: Obx(
        () => (controller.loading.value)
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            : Column(
                children: [
                  Container(
                    height: h * 36 / 100,
                    padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                    width: w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: h * 4 / 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Hi, Have a nice day",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Text(
                        //     "Kabupaten Bogor",
                        //     style: TextStyle(color: Colors.white, fontSize: 20),
                        //   ),
                        // ),
                        (controller.weatherModel.weatherText != null)
                            ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '${controller.weatherModel.weatherText} ${controller.weatherModel.temperature.metric.value} ??C',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              )
                            : Text("data"),
                        SizedBox(
                          height: h * 5 / 100,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              customBorder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              onTap: () {
                                Get.toNamed('/maps');
                              },
                              child: Container(
                                height: h * 8 / 100,
                                width: h * 8 / 100,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.4),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.mapMarkedAlt,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              customBorder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              onTap: () {
                                Get.toNamed('/pages', arguments: "gunung");
                              },
                              child: Container(
                                height: h * 8 / 100,
                                width: h * 8 / 100,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.4),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.mountain,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              customBorder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              onTap: () {
                                Get.toNamed('/pages', arguments: "Waterfall");
                              },
                              child: Container(
                                height: h * 8 / 100,
                                width: h * 8 / 100,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.4),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.water,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              customBorder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              onTap: () {
                                Get.toNamed('/menus');
                              },
                              child: Container(
                                height: h * 8 / 100,
                                width: h * 8 / 100,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.4),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.ellipsisH,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: SizedBox(
                                width: h * 8 / 100,
                                child: Center(
                                    child: Text(
                                  "Maps",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            ),
                            SizedBox(
                              width: h * 8 / 100,
                              child: Center(
                                child: AutoSizeText(
                                  "Mountains",
                                  style: TextStyle(color: Colors.white),
                                  maxLines: 1,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: h * 8 / 100,
                              child: Center(
                                child: AutoSizeText(
                                  "Waterfall",
                                  style: TextStyle(color: Colors.white),
                                  maxLines: 1,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: h * 8 / 100,
                              child: Center(
                                  child: Text(
                                "Other",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: h * 55 / 100,
                    width: w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, bottom: 8, right: 30, left: 30),
                          child: Text(
                            "Just for you",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              PageListView(w: w, h: h),
                              PageListView(w: w, h: h),
                              PageListView(w: w, h: h),
                              PageListView(w: w, h: h),
                              PageListView(w: w, h: h),
                              PageListView(w: w, h: h),
                              PageListView(w: w, h: h),
                              PageListView(w: w, h: h),
                              PageListView(w: w, h: h),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
      )),
    );
  }
}
