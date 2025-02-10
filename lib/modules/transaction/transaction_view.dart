import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendmoney/app/localization/strings.dart';
import 'package:sendmoney/modules/transaction/transaction_controller.dart';

class TransactionView extends GetView<TransactionController> {
  TransactionView({super.key});
  @override
  final TransactionController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(title: Text(Strings.lblScreenTransaction), backgroundColor: Colors.green
,
        actions: <Widget>[
      PopupMenuButton<int>(
          onSelected: (item) => controller.onLogoutBtnClicked(),
          itemBuilder: (context) => [
            PopupMenuItem<int>(value: 0, child: Text(Strings.lblLogout)),
          ],
        ),
    ],
                
            
            ),

        body: Text(
      "",
    ));
  }
}
