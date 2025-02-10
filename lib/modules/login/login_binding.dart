import 'package:get/get.dart';
import '../../app/app_barral.dart';
import 'login_controller.dart';

class LoginBinding implements Bindings {
  final UserRepository repository;
  LoginBinding({
    required this.repository,
  });

  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
        () => LoginController(userRepository: repository));
  }
}
