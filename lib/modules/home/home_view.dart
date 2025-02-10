import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendmoney/modules/home/home_berral.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});
  @override
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Text(
      "",
    ));
  }
}
