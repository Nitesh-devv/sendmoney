// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sendmoney/app/constant.dart';
import 'package:sendmoney/app/localization/strings.dart';
import 'package:sendmoney/modules/login/login_controller.dart';




class LoginView extends GetView<LoginController> {
  LoginView({super.key});
  @override
  final LoginController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              inputFormatters: [ LengthLimitingTextInputFormatter(Constant.MAX_EMAIL_LENTH),],
              controller: controller.emailController,
              decoration: InputDecoration(labelText: Strings.lblLoginEmail),
            ),
            SizedBox(height: 10),
            TextField(
              controller: controller.passwordController,
                            inputFormatters: [ LengthLimitingTextInputFormatter(Constant.MAX_PASSWORD_LENTH),],

              obscureText: true,
              decoration: InputDecoration(labelText: Strings.lblLoginPassword),
            ),
            SizedBox(height: 20),
            Obx(() => controller.isLoading.value
                ? CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: controller.login,
                    child: Text(Strings.btnLogin),
                  )),
          ],
        ),
      ),
           
    );
  }
}


