
import 'package:get/get.dart';
import 'package:sendmoney/modules/splash/splash_controller.dart';

import '../../app/app_barral.dart';

class SplashBinding implements Bindings {
  final UserRepository repository;
  SplashBinding({
    required this.repository,
  });

  @override
  void dependencies() {
    
    Get.lazyPut<SplashController>(
        () => SplashController(userRepository: repository));
  }
}
