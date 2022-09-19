import 'dart:convert';
import 'package:cloud_storage/models/general/profile_res.dart';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/utils/shared_pref.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  Future<LoginRes> getUserLogin() async {
    final dataUser = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(
      jsonDecode(
        dataUser ?? '',
      ),
    );
    return loginRes;
  }

  Future<ProfileRes> getProfileLogin() async {
    final dataUser = await SharedPreferencesUtils.getProfilePreference();
    print('data user : ${dataUser}');
    ProfileRes profileRes = ProfileRes.fromJson(
      jsonDecode(
        dataUser ?? '',
      ),
    );
    return profileRes;
  }
}
