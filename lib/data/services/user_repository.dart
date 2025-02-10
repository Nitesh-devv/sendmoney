
import 'package:hive/hive.dart';
import 'package:sendmoney/app/app_barral.dart';
import 'package:sendmoney/data/models/api_response_beans.dart';
import 'package:sendmoney/data/models/hive_model.dart';

import '../provider/provider_barral.dart';

class UserRepository {
  bool _isUserLoggedIn = false;
  NetworkApiProvider? networkProvider;
  String? _deviceID;

  UserDetails? userDetails;

  bool get isUserLoggedIn => _isUserLoggedIn;

  String? get deviceId => _deviceID;

  UserRepository() {
    _isUserLoggedIn = sharedPrefs.userLoggedIn;
    networkProvider = NetworkApiProvider();
    initData();
  }

  void initData() async {
  }

  void setUserLoggedIn(UserDetails aUser) {
    sharedPrefs.userLoggedIn = true;
    userDetails = aUser;
    sharedPrefs.setWallet = aUser.walletbalance ?? "0";
  }


void updateUserWalletInSharepref(UserDetails user){
  sharedPrefs.setWallet = user.walletbalance ?? "0";
}

  void setAutoLogin(){
    userDetails = UserDetails(email: "", walletbalance: sharedPrefs.userWallet);
  }



void saveUsers(List<TransactionBean> items) async {
  var box = Hive.box<List>(Constant.TRANSACTION_STORE_NAME);
  box.put('transaction', items);
  print('Users saved successfully!');
}

// List<TransactionBean> getTransactions() {
//   var box = Hive.box<List>(Constant.TRANSACTION_STORE_NAME);
//   return box.get('transaction', defaultValue: [])!.cast<TransactionBean>();
// }

void addTransactionItem(TransactionBean newUser) {
  // var box = Hive.box<List>(Constant.TRANSACTION_STORE_NAME);


  // // Get the existing list (if null, initialize an empty list)
  // List<TransactionBean> users = box.get('transaction', defaultValue: [])!.cast<TransactionBean>();
  // // Add the new user to the list
  // users.add(newUser);

  // // Save the updated list back to Hive
  // box.put('transaction', users);

  // var itesm = getTransactions();
  // print("");

}



  void clearUserDetails() {
    sharedPrefs.clearData();
    _isUserLoggedIn = false;
    userDetails = null;
  }










}
