import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendmoney/modules/transaction/transaction_controller.dart';

class TransactionView extends GetView<TransactionController> {
  TransactionView({super.key});
  @override
  final TransactionController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Text(
      "",
    ));
  }
}
