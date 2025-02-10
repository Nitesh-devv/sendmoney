// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendmoney/app/localization/strings.dart';
import 'package:sendmoney/modules/splash/splash_controller.dart';



class SplashScreen extends GetView<SplashController> {
  @override
  final SplashController controller = Get.find();
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(Strings.lblAppName, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)),
                       Center(child: Text(Strings.lblSplashLoading, style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),)),

          ],
        )

   ,
        );
  }
}
