import 'dart:core';

import 'package:shared_preferences/shared_preferences.dart';

/// NSUserDefaults on iOS
/// SharedPreferences on Android.
class UserDefaults {

  static setString(UserDefaultsKey key, String value) async {
    if (value == null && value.isEmpty) {
      return;
    }

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key.name, value);
  }

  static Future<void> setBool(UserDefaultsKey key, String value) async {
    if (value == null) {
      return;
    }

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key.name, value);
  }

  static Future<String> getString(UserDefaultsKey key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key.name);
  }

  static getBool() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('boolValue');
  }

  static remove(UserDefaultsKey key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(key.name);
  }
}


enum UserDefaultsKey {
  hasSeenOnBoarding
}

extension UserDefaultsKeyName on UserDefaultsKey {
  String get name {
    switch (this) {
      case UserDefaultsKey.hasSeenOnBoarding:
        return "hasSeenOnBoarding";
      default:
        return null;
    }
  }
}

