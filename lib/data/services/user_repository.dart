
import 'package:sendmoney/data/models/api_response_beans.dart';

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
  }


  void clearUserDetails() {
    sharedPrefs.clearData();
    _isUserLoggedIn = false;
    userDetails = null;
  }










}
