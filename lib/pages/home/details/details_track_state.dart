import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:cloud_storage/models/album/album_res.dart';
import 'package:cloud_storage/models/audio/audio_res.dart';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/models/track/track_res.dart';
import 'package:cloud_storage/network/http_album.dart';
import 'package:cloud_storage/network/http_ringtone.dart';
import 'package:cloud_storage/network/http_track.dart';
import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/resource/strings.dart';
import 'package:cloud_storage/utils/utils.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:dio/dio.dart';
import 'package:downloads_path_provider_28/downloads_path_provider_28.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class DetailsTracksState extends ChangeNotifier {
  BuildContext context;

  DataTrackRes? trackRes;
  String id;
  bool isLoading = false;
  bool isLoadingButton = false;

  DetailsTracksState({
    required this.context,
    required this.id,
  }) {
    init();
  }

  LoginRes? loginRes;

  init() async {
    getDetailsTrack();
  }

  void getDetailsTrack() async {
    log("getDetailsTrack");

    isLoading = true;
    notifyListeners();

    final resStep1 = await HTTPTrack().detailsTrack(
      id: id,
    );

    resStep1.fold(
      (e) async {
        isLoading = false;
        notifyListeners();

        await VUtils.showDefaultAlertDialog(
          context,
          title: "Terjadi kesalahan",
          message: e,
        );
      },
      (cat) async {
        trackRes = cat;
        isLoading = false;
        notifyListeners();
      },
    );
  }

  Future<void> downloadFile({required String urlTrack,required trackName}) async {

    isLoadingButton = true;
    notifyListeners();

    Map<Permission, PermissionStatus> statuses = await [
      Permission.storage,
      //add more permission to request here.
    ].request();

    if(statuses[Permission.storage]!.isGranted){
      var dir = await DownloadsPathProvider.downloadsDirectory;
      if(dir != null){
        String savename = trackName;
        String savePath = dir.path + "/$savename";
        print(savePath);

        try {
          await Dio().download(
              urlTrack,
              savePath,
              onReceiveProgress: (received, total) {
                if (total != -1) {
                  print((received / total * 100).toStringAsFixed(0) + "%");
                  //you can build progressbar feature too
                }
              });
          isLoadingButton = false;
          notifyListeners();
          showFlushBar(
            icon: Icons.done_outline,
            bgColor: CPGreen,
            title: 'Message',
            message: ['File sudah tersimpan di folder download.'],
          );
        } on DioError catch (e) {
          print(e.message);
          showFlushBar(
            icon: Icons.add_alert,
            bgColor: Theme.of(context).colorScheme.error,
            title: 'Opss',
            message: ['Data tidak ditemukan'],
          );
          isLoadingButton = false;
          notifyListeners();
        }
      }
    }else{
      isLoadingButton = false;
      notifyListeners();
      showFlushBar(
        icon: Icons.add_alert,
        bgColor: Theme.of(context).colorScheme.error,
        title: 'Opss',
        message: ['No permission to read and write.'],
      );
    }
  }

  void showFlushBar({
    required IconData icon,
    required Color bgColor,
    required String title,
    required List<String> message,
  }) {
    Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: bgColor,
      duration: Duration(seconds: 3),
      titleText: Row(
        children: [
          Icon(
            // Icons.add_alert_rounded,
            icon,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          SizedBox(width: 5),
          vText(
            title,
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

  Widget buildCoverImage({
    required String urlImages,
    required double width,
  }) {
    if (urlImages.isEmpty) {
      return Container(
        height: MediaQuery.of(context).size.height / 3,
        child: Icon(
          Icons.broken_image,
          size: 30,
          color: CPPrimaryColor,
        ),
      );
    } else {

      String image = urlImages.replaceAll('public', 'storage');
      String urlImage = '${APP_URL + image}';

      return Container(
        height: MediaQuery.of(context).size.height / 3,
        child: Image.network(
          urlImage,
          width: width,
          height: width * 1.05,
          fit: BoxFit.cover,
        ),
      );
    }
  }

}
