import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sendmoney/app/app_barral.dart';
import 'package:sendmoney/data/models/api_response_beans.dart';
import 'package:sendmoney/navigation/routes.dart';


class LoginController extends GetxController {
  final UserRepository userRepository;
  LoginController({required this.userRepository});



   var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var isLoading = false.obs;

  void login() {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar(Strings.lblLoginValidationErrorTitle, Strings.lblLoginValidationErrorMsg,
          snackPosition: SnackPosition.BOTTOM);
      return;
    }
    
    isLoading.value = true;
    Future.delayed(Duration(seconds: 2), () {
      isLoading.value = false;
      if(emailController.text.toString().toLowerCase() == Constant.OFFLINE_EMAIL.toLowerCase() 
      && passwordController.text.toString().toLowerCase() == Constant.OFFLINE_PASSWORD.toLowerCase()){
      Get.snackbar(Strings.lblLoginSucessTitle, Strings.lblLoginSucessMessage,
          snackPosition: SnackPosition.BOTTOM);
        userRepository.setUserLoggedIn(UserDetails(email: emailController.text.toString(), walletbalance: Constant.DEFAULT_MONEY));  
         AllRoute.routeOffAll(pageName:  AllRoute.homeScreenRoute, argument :null );
      }else{
      Get.snackbar(Strings.lblLoginInvalidTitle, Strings.lblLoginInvalidMsg,
          snackPosition: SnackPosition.BOTTOM);

      }
    });
  }

  // @override
  // void onInit() {
  //   super.onInit();
    
  // }

}