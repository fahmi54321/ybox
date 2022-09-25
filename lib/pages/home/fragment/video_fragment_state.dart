import 'dart:async';
import 'dart:developer';

import 'package:cloud_storage/controllers/user_controller.dart';
import 'package:cloud_storage/models/album/album_res.dart';
import 'package:cloud_storage/models/audio/audio_res.dart';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/models/video/video_res.dart';
import 'package:cloud_storage/network/http_album.dart';
import 'package:cloud_storage/network/http_ringtone.dart';
import 'package:cloud_storage/network/http_video.dart';
import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/utils/utils.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'package:cloud_storage/utils/shared_pref.dart';

class VideoFragmentStates extends ChangeNotifier {
  BuildContext context;

  VideoRes? videoRes;

  VideoFragmentStates({required this.context}) {
    init();
  }

  final PagingController<int, DataVideoRes> pagingController =
      PagingController(firstPageKey: 1);

  LoginRes? loginRes;

  init() async {
    pagingController.addPageRequestListener((pageKey) {
      getVideo(pageKey);
    });
  }

  Future<void> pullRefresh() async {
    pagingController.refresh();
  }

  Future<void> getVideo(int page) async {
    log("getVideo $page");

    final getUser = Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();
    notifyListeners();

    Map<String, dynamic> data = {
      'page': page,
      'id' : loginRes.id,
    };
    try {
      final resStep1 = await HTTPVideo().getVideo(
        data: data,
      );

      resStep1.fold(
        (e) async {
          await VUtils.showDefaultAlertDialog(
            context,
            title: "Terjadi kesalahan",
            message: e,
          );
        },
        (cat) async {
          final isLastPage = cat.data.length < cat.pagination.perPage;
          if (isLastPage) {
            pagingController.appendLastPage(cat.data);
          } else {
            final nextPageKey = page + 1;

            pagingController.appendPage(cat.data, nextPageKey);
          }

          // notifyListeners();
        },
      );
    } catch (error) {
      print(error);
      pagingController.error = error;
    }
  }

  Widget getIconStatus(int status){
    if(status == 0){
      return Icon(
        Icons.pending_rounded,
        color: Theme.of(context).colorScheme.primary,
        size: 16,
      );
    }else if(status == 1){
      return Icon(
        Icons.done_outline,
        color: CPGreen,
        size: 16,
      );
    }else{
      return Icon(
        Icons.pending_rounded,
        color: Theme.of(context).colorScheme.primary,
        size: 16,
      );
    }

  }

  String getTextStatus(int status){
    if(status == 0){
      return 'Pending';
    }else if(status == 1){
      return 'Approvved';
    }else{
      return 'Pending';
    }

  }

  void showFlushBar(List<String> message) {
    Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: Theme.of(context).colorScheme.error,
      duration: Duration(seconds: 3),
      titleText: Row(
        children: [
          Icon(
            Icons.add_alert_rounded,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          SizedBox(width: 5),
          vText(
            "Oops...",
            fontSize: 20,
            color: Theme.of(context).colorScheme.onPrimary,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
      messageText: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: message.length,
          itemBuilder: (context, index) {
            String msg = message[index];

            return Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: vText(
                msg,
                fontSize: 16,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            );
          }),
    )..show(context);
  }
}
