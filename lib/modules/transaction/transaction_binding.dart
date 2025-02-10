
import 'package:get/get.dart';
import 'package:sendmoney/modules/transaction/transaction_berral.dart';

class TransactionBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransactionController>(() => TransactionController());
  }
}
