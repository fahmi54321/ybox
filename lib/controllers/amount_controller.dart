import 'dart:convert';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/network/http_dashoboard.dart';
import 'package:cloud_storage/utils/shared_pref.dart';
import 'package:cloud_storage/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AmountController extends GetxController {

  bool isLoadingJmlAmount = false;

  String jmlAmount = '0';

  void getJmlAmount(BuildContext context) async {
    isLoadingJmlAmount = true;
    update();

    final resStep1 = await HTTPDashboard().countAmount();
    isLoadingJmlAmount = false;

    update();
    resStep1.fold(
          (e) async {
        isLoadingJmlAmount = false;
        update();

        await VUtils.showDefaultAlertDialog(
          context,
          title: "Login Failed!",
          message: e,
        );
      },
          (cat) async {
        jmlAmount = cat;
        isLoadingJmlAmount = false;
        update();
      },
    );
  }


}
