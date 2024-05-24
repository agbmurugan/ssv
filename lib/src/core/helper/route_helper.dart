import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:temple_app_malay/Authentication/landing.dart';
// import 'package:temple_app_malay/homeScreen/homepage.dart';
// import 'package:temple_app_malay/src/mvc/view/archanai_booking/archanai_booking_screen.dart';
// import 'package:temple_app_malay/src/mvc/view/signin/signin_screen.dart';
// import 'package:temple_app_malay/src/mvc/view/signup/signup_screen.dart';

class RouteHelper {
  static const String splash = '/splash';
  static const String signUp = '/signUp';
  static const String signIn = '/signIn';
  static const String home = '/home';
  static const String landingPage = '/landingPage';
  static const String dashBoard = '/dashBoard';
  static const String archanaiBooking = '/archanaiBooking';

  static String getSplashRoute() => splash;
  static String getSignInRoute() => signIn;
  static String getDashBoardRoute() => dashBoard;
  static String getSignUpRoute() => signUp;
  static String getLandingPage() => landingPage;
  static String getArchanaiBooking() => archanaiBooking;

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => const SizedBox()),
    // GetPage(name: signUp, page: () => const SignUpScreen()),
    // GetPage(name: signIn, page: () => const SignInScreen()),
    // GetPage(name: dashBoard, page: () => Homepage()),
    // GetPage(name: landingPage, page: () => const LandingPage()),
    // GetPage(name: archanaiBooking, page: () => const ArchanaiBookingScreen()),
  ];

  static removeUntil({String? name, dynamic arg}) {
    Get.offAllNamed(name ?? dashBoard, arguments: arg);
  }

  static pop({String? name}) {
    Get.back(closeOverlays: Platform.isIOS);
    if (name != null) {
      popUntil(name: name);
    }
  }

  static popUntil({String? name}) {
    Get.until((route) => name != null
        ? route.settings.name == name
        : route.settings.name == home);
  }
}
