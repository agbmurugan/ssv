// ignore_for_file: constant_identifier_names

import 'package:sreeselvavinayagartemple/src/core/constants/app_images.dart';
import 'package:sreeselvavinayagartemple/src/core/helper/route_helper.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/common/language_model.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/common/model_utils.dart';

class AppConfig {
  AppConfig._();
  static const String appName = "ARMD";
  static const String currency = "RM";
  static const String CUSTOMER_ID = 'customer_id';


  static const andoidBuild = 8;
  static const iOSBuild = 6;

  static const String PLAYSTORE_URL =
      'https://play.google.com/store/apps/details?id=com.app.temple_app_malay&hl=en_IN&gl=US';
  static const String APPSTORE_URL =
      "https://apps.apple.com/us/app/armd/id6476650544";

  // Languages
  static List<LanguageModel> languages = [
    LanguageModel(
        imageUrl: "",
        languageName: 'English',
        countryCode: 'US',
        languageCode: 'en'),
    LanguageModel(
        imageUrl: "",
        languageName: "Tamil",
        languageCode: "ta",
        countryCode: "IN"),
  ];

  // Dashboard names
  static List<ValueModel> bookingMenu = [
    ValueModel(
        valueOne: "Archanai Booking",
        valueTwo: RouteHelper.archanaiBooking,
        valueThree: AppImages.fest),
    ValueModel(
        valueOne: "Prasadam Booking",
        valueTwo: RouteHelper.archanaiBooking,
        valueThree: AppImages.donate),
    ValueModel(
        valueOne: "Annathanam",
        valueTwo: RouteHelper.archanaiBooking,
        valueThree: AppImages.fest),
    ValueModel(
        valueOne: "Seer Booking",
        valueTwo: RouteHelper.archanaiBooking,
        valueThree: AppImages.hallbook),
  ];
}
