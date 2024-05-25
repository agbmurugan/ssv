import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/app_config.dart';
// import 'package:sreeselvavinayagartemple/src/mvc/comtroller/festivals/festivals_controller.dart';
import 'package:sreeselvavinayagartemple/src/mvc/controller/pooja_time/pooja_time_controller.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/firebase/firebase_helper.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/common/language_model.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/network/api_client.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/network/dio_client.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/repository/auth/auth_repo.dart';
// import 'package:temple_app_malay/src/mvc/data/repository/archanai/archanai_repo.dart';
// import 'package:sreeselvavinayagartemple/src/mvc/data/repository/auth/auth_repo.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/repository/common_repo/common_repo.dart';
// import 'package:temple_app_malay/src/mvc/data/repository/festival_repo/festival_repo.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/repository/pooja_time_repo/pooja_time_repo.dart';

Future init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreferences);

  //Database
  Get.lazyPut(() => FirebaseHelper());

  //Dio
  Get.lazyPut(() => DioClient(Dio()));
  Get.lazyPut(() => ApiClient(
        dioClient: Get.find(),
      ));

  // Repository
  Get.lazyPut(
      () => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));

  // Get.lazyPut(() => ArchanaiRepo(
  //       apiClient: Get.find(),
  //     ));
  Get.lazyPut(() => PoojaTimeRepo(
        firebaseHelper: Get.find(),
      ));
  // Get.lazyPut(() => FestivalsRepo(
  //       firebaseHelper: Get.find(),
  //     ));
  Get.lazyPut(() => CommonRepo(
        firebaseHelper: Get.find(),
      ));

  //Controller
  // Get.lazyPut(() => LocalizationController());
  // Get.lazyPut(() => FestivalsController(repo: Get.find()));
  Get.lazyPut(() => PoojaTimeController(repo: Get.find()));

  Map<String, Map<String, String>> languages = {};
  for (LanguageModel languageModel in AppConfig.languages) {
    String jsonStringValues = await rootBundle
        .loadString('assets/language/${languageModel.languageCode}.json');
    Map<String, dynamic> mappedJson = json.decode(jsonStringValues);
    Map<String, String> jsonMap = {};
    mappedJson.forEach((key, value) {
      jsonMap[key] = value.toString();
    });
    languages['${languageModel.languageCode}_${languageModel.countryCode}'] =
        jsonMap;
  }
  return languages;
}
