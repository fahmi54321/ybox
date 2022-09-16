import 'dart:developer';

import 'package:cloud_storage/controllers/user_controller.dart';
import 'package:cloud_storage/models/audio/audio_res.dart';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/models/video/video_res.dart';
import 'package:cloud_storage/network/api_interceptor.dart';
import 'package:cloud_storage/network/api_url.dart';
import 'package:cloud_storage/network/base/http_form.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as gets;

class HTTPVideo {

  HTTPForm httpForm = HTTPForm();

  Future<Either<String, int>> uploadVideo({
    required FormData data,
  })  {
    return httpForm.uploadForm(data: data, urlApi: ApiUrl.saveVideo);
  }

  Future<Either<String, int>> editVideo({
    required int id,
    required FormData data,
  }) {
    return httpForm.editForm(id: id, data: data, urlApi: ApiUrl.editVideo);
  }

  Future<Either<String, VideoRes>> getVideo<VideoRes>({
    required Map<String, dynamic> data,
  }) {
    return httpForm.getForm(data: data, urlApi: ApiUrl.getVideo);
  }

  Future<Either<String, DataVideoRes>> detailsVideo<DataVideoRes>({
    required String id,
  }) async {
    return httpForm.detailsForm(id: id, urlApi: ApiUrl.getVideo);
  }
}
