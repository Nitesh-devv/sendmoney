// import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sendmoney/data/provider/api_path.dart';

import '../models/api_request_beans.dart';
import '../models/api_response_beans.dart';
part 'api_provider.g.dart';

class NetworkApiProvider {
  // String? _acessToken;
  late ApiClient client;

  // final Connectivity _connectivity = Connectivity();
  // ConnectivityResult _result = ConnectivityResult.none;
  //
  // Future<bool> checkInternet() async {
  //   bool isConnected = false;
  //  var  connectivityResult = await _connectivity.checkConnectivity();
  //   try {
  //     if (connectivityResult == ConnectivityResult.mobile) {
  //       isConnected =  true;
  //     } else if (connectivityResult == ConnectivityResult.wifi) {
  //       isConnected =  true;
  //
  //     } else if (connectivityResult == ConnectivityResult.none) {
  //       isConnected =  false;
  //     }
  //
  //
  //     return isConnected;
  //   } catch (ex) {
  //     return isConnected;
  //   }
  // }
  //
  // ConnectivityResult getResult() {
  //   return _result;
  // }

  NetworkApiProvider() {
    client = ApiClient(Dio(BaseOptions(contentType: "application/json")));
  }

  Future<LoginResponse> loginRequest(LoginRequest aRequest) {
    return client.login(aRequest);
  }

  

  
}

@RestApi(baseUrl: appDevBaseUrl + appUserUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST("login")
  Future<LoginResponse> login(@Body() LoginRequest aRequest);

  }
