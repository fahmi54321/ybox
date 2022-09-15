import 'dart:io';

import 'package:flutter/material.dart';

class UploadState extends ChangeNotifier {

  BuildContext context;
  List<File> listFoto = [];
  List<File> listAudio = [];
  List<File> listVideo = [];
  List<String> listSelesai = [
    'images/example_image.png',
    'images/example_image.png',
    'images/example_image.png',
    'images/example_image.png',
  ];
  UploadState(this.context);
}