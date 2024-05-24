import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelperFunctions {
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static bool isUrl(String string) {
    try {
      final urlPattern = RegExp(r'^https?:\/\/[\w\-]+(\.[\w\-]+)+[/#?]?.*$');
      return urlPattern.hasMatch(string);
    } catch (e) {
      return false;
    }
  }

  static String generateRandomId() {
    try {
      final random = Random();
      const characters =
          '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
      const length = 18;
      final buffer = StringBuffer();

      for (var i = 0; i < length; i++) {
        final randomIndex = random.nextInt(characters.length);
        buffer.write(characters[randomIndex]);
      }

      return buffer.toString();
    } catch (e) {
      return "";
    }
  }

  static isNotEmpty(data) {
    try {
      return data != null && data.isNotEmpty;
    } catch (e) {
      return false;
    }
  }
}
