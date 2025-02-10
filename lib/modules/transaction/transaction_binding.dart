
import 'package:get/get.dart';
import 'package:sendmoney/app/app_barral.dart';
import 'package:sendmoney/modules/transaction/transaction_berral.dart';

class TransactionBinding implements Bindings {


      final UserRepository repository;

  TransactionBinding({required this.repository});

  @override
  void dependencies() {
    Get.lazyPut<TransactionController>(() => TransactionController(userRepository: UserRepository()));
  }
}
