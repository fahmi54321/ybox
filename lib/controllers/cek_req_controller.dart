import 'dart:convert';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/network/http_dashoboard.dart';
import 'package:cloud_storage/utils/shared_pref.dart';
import 'package:cloud_storage/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CekReqController extends GetxController {

  // bool isLoadingCekReq = false;
  //
  // int jmlCekReq = 0;
  //
  // void cekReq(BuildContext context) async {
  //   isLoadingCekReq = true;
  //   update();
  //
  //   final resStep1 = await HTTPDashboard().cekReq();
  //   isLoadingCekReq = false;
  //
  //   update();
  //   resStep1.fold(
  //         (e) async {
  //       isLoadingCekReq = false;
  //       update();
  //
  //       await VUtils.showDefaultAlertDialog(
  //         context,
  //         title: "Login Failed!",
  //         message: e,
  //       );
  //     },
  //         (cat) async {
  //       jmlCekReq = cat;
  //       isLoadingCekReq = false;
  //       update();
  //     },
  //   );
  // }


}
