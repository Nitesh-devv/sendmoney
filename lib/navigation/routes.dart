import 'package:get/get.dart';
import 'package:sendmoney/modules/home/home_berral.dart';
import 'package:sendmoney/modules/login/login_view.dart';
import 'package:sendmoney/modules/send/send_binding.dart';
import 'package:sendmoney/modules/send/send_view.dart';
import 'package:sendmoney/modules/transaction/transaction_berral.dart';

import '../modules/login/login_binding.dart';
import '../modules/splash/splash_barral.dart';
import '../app/app_barral.dart';

class AllRoute {
  static const String splashScreenRoute = '/';
  static const String loginScreenRoute = "/login";
  static const String homeScreenRoute = '/home';
  static const String sendMoenyScreenRoute = '/send';
  static const String transactionScreenRoute = '/transaction';


  static List<GetPage<dynamic>> getPages(UserRepository repository) {
    return [
      GetPage(
          name: splashScreenRoute,
          page: () => SplashScreen(),
          binding: SplashBinding(repository: repository)),
      GetPage(
          name: loginScreenRoute,
          page: () => LoginView(),
          binding: LoginBinding(repository: repository)),
                GetPage(
          name: homeScreenRoute,
          page: () => HomeView(),
          binding: HomeBinding(repository: repository)),
        GetPage(
          name: sendMoenyScreenRoute,
          page: () => SendView(),
          binding: SendBinding()),
                GetPage(
          name: transactionScreenRoute,
          page: () => TransactionView(),
          binding: TransactionBinding()),
     
    ];
  }

  static void routeTo({required String pageName, dynamic argument}) {
    Get.toNamed(pageName, arguments: argument);
  }

  static void routePopAndPushTo({required String pageName, dynamic argument}) {
    Get.offAndToNamed(pageName, arguments: argument);
  }

  static void routeOffAll({required String pageName, dynamic argument}) {
    Get.offAllNamed(pageName, arguments: argument);
  }
}
