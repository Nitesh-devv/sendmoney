
import 'package:get/get.dart';
import 'package:sendmoney/modules/send/send_controller.dart';

class SendBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SendController>(() => SendController());
  }
}
