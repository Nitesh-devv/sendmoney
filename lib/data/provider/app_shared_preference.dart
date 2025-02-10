import 'package:shared_preferences/shared_preferences.dart';

const String _sharedPrefIsLoggedInKey = "key_user_loggedin";
const String _sharedPrefWalletKey = "key_user_walle";

final sharedPrefs = AppSharedPreference();

class AppSharedPreference {
  static SharedPreferences? _sharedPrefs;

  init() async {
    _sharedPrefs ??= await SharedPreferences.getInstance();
  }

//User logged in
  bool get userLoggedIn {
    bool? loggedin = _sharedPrefs!.getBool(_sharedPrefIsLoggedInKey);
    return loggedin ?? false;
  }

  set userLoggedIn(bool aBool) {
    _sharedPrefs!.setBool(_sharedPrefIsLoggedInKey, aBool);
  }


    String get userWallet {
    return _sharedPrefs!.getString(_sharedPrefWalletKey) ?? "0";
  }

  set setWallet(String amount) {
    _sharedPrefs!.setString(_sharedPrefWalletKey, amount);
  }

  void clearData() {
    _sharedPrefs!.clear();
  }
}
