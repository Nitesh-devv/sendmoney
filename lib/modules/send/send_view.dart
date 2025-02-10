// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendmoney/app/localization/strings.dart';
import 'package:sendmoney/modules/send/send_controller.dart';

class SendView extends GetView<SendController> {
  SendView({super.key});
  @override
  final SendController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(title: Text(Strings.lblScreenSend), backgroundColor: Colors.green,),

        body: Text(
      "",
    ));
  }
}
