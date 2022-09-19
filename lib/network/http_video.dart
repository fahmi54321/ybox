import 'dart:developer';

import 'package:cloud_storage/controllers/user_controller.dart';
import 'package:cloud_storage/models/audio/audio_res.dart';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/models/video/video_res.dart';
import 'package:cloud_storage/network/api_interceptor.dart';
import 'package:cloud_storage/network/api_url.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' as gets;

class HTTPVideo {
  Future<Either<String, int>> uploadVideo({
    required FormData data,
  }) async {
    print('HTTPVideo start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().post(
          ApiUrl.saveVideo,
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ' + loginRes.access_token,
            'Accept': 'application/json',
          }),
        );

    log('url : ${ApiUrl.saveVideo}');
    log('response : ${response.data}');
    log('params : ${data.fields}');


    if (response.statusCode == 200) {
      return Right(response.statusCode??0);
    } else if(response.statusCode == 422){
      return Left('Audio atau gambar formatnya kurang valid');
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, int>> editVideo({
    required int id,
    required FormData data,
  }) async {
    print('HTTPVideo start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().post(
      ApiUrl.editVideo + id.toString(),
      data: data,
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
        'Accept': 'application/json',
      }),
    );

    log('url : ${ApiUrl.editVideo + id.toString()}');
    log('response : ${response.data}');
    log('params : ${data.fields}');


    if (response.statusCode == 200) {
      return Right(response.statusCode??0);
    } else if(response.statusCode == 422){
      return Left('Audio atau gambar formatnya kurang valid');
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, VideoRes>> getVideo({
    required Map<String, dynamic> data,
  }) async {
    print('HTTPGetVideoService start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().get(
      ApiUrl.getVideo,
      queryParameters: data,
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
      }),
    );
    print('url : ${ApiUrl.getVideo}');
    print('params : $data');
    print('response : ${response.data}');

    if (response.statusCode == 200) {
      final result = VideoRes.fromJson(
          response.data['data'] as Map<String, dynamic>);
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, DataVideoRes>> detailsVideo({
    required String id,
  }) async {
    print('HTTPGetDetailsVideoService start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().get(
      ApiUrl.detailsVideo + id,
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
      }),
    );
    print('url : ${ApiUrl.detailsVideo + id}');
    print('response : ${response.data}');

    if (response.statusCode == 200) {
      final result = DataVideoRes.fromJson(
          response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }
}
