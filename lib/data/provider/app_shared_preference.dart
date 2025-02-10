import 'package:shared_preferences/shared_preferences.dart';

const String _sharedPrefIsLoggedInKey = "key_user_loggedin";

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

  void clearData() {
    _sharedPrefs!.clear();
  }
}
