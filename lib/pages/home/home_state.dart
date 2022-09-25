import 'package:cloud_storage/controllers/user_controller.dart';
import 'package:cloud_storage/models/general/profile_res.dart';
import 'package:cloud_storage/network/http_login.dart';
import 'package:cloud_storage/pages/login/login_page.dart';
import 'package:cloud_storage/resource/strings.dart';
import 'package:cloud_storage/utils/shared_pref.dart';
import 'package:cloud_storage/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeState extends ChangeNotifier {
  BuildContext context;
  ProfileRes profileRes = ProfileRes(
    id: 0,
    image: '',
    firstName: '',
    lastName: '',
    levelId: 0,
    username: '',
  );

  String urlImage = '';
  bool isLoading = false;

  HomeState(this.context) {
    init();
  }

  init() async {
    final getProfile = Get.find<UserController>();
    profileRes = await getProfile.getProfileLogin();

    if (profileRes.image.isNotEmpty) {
      String image = profileRes.image.replaceAll('public', 'storage');
      urlImage = '${APP_URL + image}';
    }

    notifyListeners();
  }

  void logout() async {
    isLoading = true;
    notifyListeners();

    final resStep1 = await HTTPLoginService().logout();
    isLoading = false;

    notifyListeners();
    resStep1.fold(
      (e) async {
        isLoading = false;
        notifyListeners();
        await VUtils.showDefaultAlertDialog(
          context,
          title: "Gagal logout!",
          message: e,
        );
      },
      (cat) async {

        SharedPreferencesUtils.clearLoginPreference();

        Navigator.pushNamedAndRemoveUntil(
          context,
          LoginPage.ROUTE,
          (route) => false,
        );
      },
    );
  }

  String titleText({
    required int index,
    required int selectAudio,
    required int selectTrack,
    required int selectTransaction,
  }) {
    if(index == 0){
      return 'Home';
    }
    else if(index == 1){
      return 'Album';
    }else if(index == 2){
      return 'Video';
    }else if(index == 3 && selectAudio == 1){
      return 'Ringtone';
    }else if(index == 3 && selectTrack == 1){
      return 'Track';
    }else{
      return 'Transaction';
    }
  }
}
