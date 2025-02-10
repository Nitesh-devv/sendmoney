
import 'package:get/get.dart';
import 'package:sendmoney/app/app_barral.dart';
import 'package:sendmoney/modules/send/send_controller.dart';

class SendBinding implements Bindings {


      final UserRepository repository;

  SendBinding({required this.repository});
  @override
  void dependencies() {
    Get.lazyPut<SendController>(() => SendController(userRepository: repository));
  }
}
