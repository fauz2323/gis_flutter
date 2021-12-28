import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Menus extends StatelessWidget {
  const Menus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text("Menu"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
          child: GridView.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 4,
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
                    color: Colors.grey.withOpacity(0.4),
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
                  Get.toNamed('/maps');
                },
                child: Container(
                  height: h * 8 / 100,
                  width: h * 8 / 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
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
                  Get.toNamed('/maps');
                },
                child: Container(
                  height: h * 8 / 100,
                  width: h * 8 / 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
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
                  Get.toNamed('/maps');
                },
                child: Container(
                  height: h * 8 / 100,
                  width: h * 8 / 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
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
                  Get.toNamed('/maps');
                },
                child: Container(
                  height: h * 8 / 100,
                  width: h * 8 / 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
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
                  Get.toNamed('/maps');
                },
                child: Container(
                  height: h * 8 / 100,
                  width: h * 8 / 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
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
                  Get.toNamed('/maps');
                },
                child: Container(
                  height: h * 8 / 100,
                  width: h * 8 / 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
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
                  Get.toNamed('/maps');
                },
                child: Container(
                  height: h * 8 / 100,
                  width: h * 8 / 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
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
                  Get.toNamed('/maps');
                },
                child: Container(
                  height: h * 8 / 100,
                  width: h * 8 / 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
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
                  Get.toNamed('/maps');
                },
                child: Container(
                  height: h * 8 / 100,
                  width: h * 8 / 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
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
                  Get.toNamed('/maps');
                },
                child: Container(
                  height: h * 8 / 100,
                  width: h * 8 / 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
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
                  Get.toNamed('/maps');
                },
                child: Container(
                  height: h * 8 / 100,
                  width: h * 8 / 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
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
            ],
          ),
        ));
  }
}
