import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/api_config.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/app_config.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/common/response_model.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/customer/signin_data.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/customer/signup.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/network/api_client.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/repository/repo_helper.dart';

class AuthRepo extends GetxService with RepoHelper<ResponseModel> {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  AuthRepo({
    required this.apiClient,
    required this.sharedPreferences,
  });

  
   Future<ResponseModel> signUp(SignUp body) async {
    ResponseModel signUpResponse = const ResponseModel();

    Map map = {
      "name": body.name ?? "",
      "ic_number": body.ic_number ?? "",
      "email": body.email,
      "username": body.username,
      "password": body.password
    };
    Response response = await apiClient.postData(ApiConfig.signUp, map);
    signUpResponse = await tranferData(response, SignInData.fromJson);
    return signUpResponse;
  }

  Future<ResponseModel> signIn(SignUp body) async {
    ResponseModel signInResponse = const ResponseModel();

    Map map = {"username": body.username, "password": body.password};
    Response response = await apiClient.postData(ApiConfig.signIn, map);
    signInResponse = await tranferData(response, SignInData.fromJson);
    return signInResponse;
  }

  bool isLoggedIn() {
    return sharedPreferences.containsKey(AppConfig.CUSTOMER_ID);
  }

  int getCustomerID() {
    return sharedPreferences.getInt(AppConfig.CUSTOMER_ID) ?? 0;
  }

  saveCustomerID(id) {
    sharedPreferences.setInt(AppConfig.CUSTOMER_ID, id);
  }
}
