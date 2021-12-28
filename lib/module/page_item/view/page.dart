import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skripsi_ui/module/page_item/view/widget/list_widget.dart';

class PageApp extends StatelessWidget {
  const PageApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("${Get.arguments} List"),
        centerTitle: true,
      ),
      body: Container(
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
    );
  }
}
