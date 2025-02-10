import 'package:get/get.dart';
import 'package:sendmoney/data/services/user_repository.dart';
import 'package:sendmoney/navigation/routes.dart';

class TransactionController extends GetxController {


      final UserRepository userRepository;
  TransactionController({required this.userRepository});

  @override
  void onInit() {
    super.onInit();

    // var getItems = userRepository.getTransactions();
  }

  void onBackBtnClicked() {
    Get.back();
  }



    void onLogoutBtnClicked(){
    userRepository.clearUserDetails();
          AllRoute.routeOffAll(pageName:  AllRoute.loginScreenRoute, argument :null );

  }
}
