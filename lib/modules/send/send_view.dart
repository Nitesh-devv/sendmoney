// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
            appBar: AppBar(title: Text(Strings.lblScreenSend), backgroundColor: Colors.green,
            
                  actions: <Widget>[
      PopupMenuButton<int>(
          onSelected: (item) => controller.onLogoutBtnClicked(),
          itemBuilder: (context) => [
            PopupMenuItem<int>(value: 0, child: Text(Strings.lblLogout)),
          ],
        ),
    ],

            ),

        body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ], 
              controller: controller.amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Amount'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              controller.onSubmitButtonClicked();    


              },
              child: Text('Submit'),
            )
          ],
        ),
      
    ));
  }
}
