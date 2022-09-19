import 'package:cloud_storage/controllers/user_controller.dart';
import 'package:cloud_storage/models/general/profile_res.dart';
import 'package:cloud_storage/resource/strings.dart';
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
  );

  String urlImage = '';

  HomeState(this.context) {
    init();
  }

  init() async {
    final getProfile = Get.find<UserController>();
    profileRes = await getProfile.getProfileLogin();

    if(profileRes.image.isNotEmpty) {
      String image = profileRes.image.replaceAll('public', 'storage');
      urlImage = '${APP_URL + image}';
    }

    notifyListeners();
  }
}
