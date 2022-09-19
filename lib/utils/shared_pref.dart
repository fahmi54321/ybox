import 'dart:convert';

import 'package:cloud_storage/models/general/profile_res.dart';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/resource/strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtils {
  static Future clearLoginPreference() async {
    // _deleteCacheDir();
    // _deleteAppDir();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    return true;
  }

  static Future saveLoginPreference(LoginRes data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(PREFERENCE_TOKEN, data.access_token);
    prefs.setString(PREFERENCE_LOGIN_DATA, jsonEncode(data));
  }

  static Future saveProfilePreference(ProfileRes data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(PREFERENCE_PROFILE_DATA, jsonEncode(data));
  }

  static Future<LoginRes?> getUserPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var data = await prefs.getString(PREFERENCE_LOGIN_DATA);

    if (data != null) {
      LoginRes loginRes = LoginRes.fromJson(jsonDecode(data));
      return loginRes;
    } else {
      return null;
    }
  }

  static Future<String?> getLoginPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var data = await prefs.getString(PREFERENCE_LOGIN_DATA);
    return data;
  }

  static Future<String?> getProfilePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var data = await prefs.getString(PREFERENCE_PROFILE_DATA);
    return data;
  }

}
