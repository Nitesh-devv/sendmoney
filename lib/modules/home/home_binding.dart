import 'package:get/get.dart';
import 'package:sendmoney/modules/home/home_controller.dart';

import '../../data/services/user_repository.dart';

class HomeBinding implements Bindings {

    final UserRepository repository;

  HomeBinding({required this.repository});

  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController( userRepository: repository));
  }
}
