
import 'package:get/get.dart';

import '../../app/app_barral.dart';
import '../../navigation/routes.dart';


class SplashController extends GetxController {
  final UserRepository userRepository;


  SplashController({required this.userRepository});

  @override
  void onInit() {
    // print("Splash controller inited");
    super.onInit();

    Future.delayed(const Duration(seconds: 2)).then((val) {
    // Your logic here 
        if(userRepository.isUserLoggedIn){
    }else{
         AllRoute.routeOffAll(pageName:  AllRoute.loginScreenRoute, argument :null );
    }
  });


  }

 
}
