import 'package:get/get.dart';
import 'package:sendmoney/data/services/user_repository.dart';
import 'package:sendmoney/navigation/routes.dart';

class HomeController extends GetxController {

    final UserRepository userRepository;
  HomeController({required this.userRepository});

   var balance = 0.obs;
  var showBalance = true.obs;


  @override
  void onInit() {
    super.onInit();
    balance.value = int.parse(userRepository.userDetails!.walletbalance ?? "0");
  }

  void onBackBtnClicked() {
    Get.back();  
  }


  void onSendMoneyBtnClicked() async{
   await  AllRoute.routeTo(pageName:  AllRoute.sendMoenyScreenRoute, argument :null );
        balance.value = int.parse(userRepository.userDetails!.walletbalance ?? "0");


  }
  void onViewTransactionBtnClicked(){
      AllRoute.routeTo(pageName:  AllRoute.transactionScreenRoute, argument :null );
    
  }

  void onLogoutBtnClicked(){
    userRepository.clearUserDetails();
          AllRoute.routeOffAll(pageName:  AllRoute.loginScreenRoute, argument :null );

  }


}
