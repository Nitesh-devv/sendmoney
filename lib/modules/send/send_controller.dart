import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sendmoney/app/localization/strings.dart';
import 'package:sendmoney/data/models/hive_model.dart';
import 'package:sendmoney/data/services/user_repository.dart';
import 'package:sendmoney/navigation/routes.dart';

class SendController extends GetxController {
    final UserRepository userRepository;
  SendController({required this.userRepository});

    final TextEditingController amountController = TextEditingController();

    
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  void onBackBtnClicked() {
    Get.back();
  }

  void onSubmitButtonClicked(){
      if (amountController.text.isNotEmpty && int.parse(amountController.text.toString()) > 0) {
          userRepository.userDetails!.walletbalance  = (int.parse(userRepository.userDetails!.walletbalance ?? "0") + int.parse(amountController.text.toString())).toString();
          userRepository.updateUserWalletInSharepref(userRepository.userDetails!);
          userRepository.addTransactionItem(TransactionBean(amount:amountController.text.toString() , time: DateTime.now()));


         Get.snackbar(Strings.lblSendMoenyTransactionSucessTitle, 
      Strings.lblSendMoenyTransactionSucessMsg,   snackPosition: SnackPosition.BOTTOM);
      }else{
         Get.snackbar(Strings.lblSendMoenyValidAmountTitle, 
 Strings.lblSendMoenyValidAmountMsg,   snackPosition: SnackPosition.BOTTOM);
        
      }
  }

    void onLogoutBtnClicked(){
    userRepository.clearUserDetails();
          AllRoute.routeOffAll(pageName:  AllRoute.loginScreenRoute, argument :null );

  }


}
