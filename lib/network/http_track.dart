import 'dart:developer';

import 'package:cloud_storage/controllers/user_controller.dart';
import 'package:cloud_storage/models/audio/audio_res.dart';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/models/track/track_res.dart';
import 'package:cloud_storage/network/api_interceptor.dart';
import 'package:cloud_storage/network/api_url.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' as gets;

class HTTPTrack {
  Future<Either<String, int>> uploadTrack({
    required FormData data,
  }) async {
    print('HTTPTrack start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().post(
          ApiUrl.saveTrack,
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ' + loginRes.access_token,
            'Accept': 'application/json',
          }),
        );

    log('url : ${ApiUrl.saveTrack}');
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

  Future<Either<String, TrackRes>> getTrack({
    required Map<String, dynamic> data,
  }) async {
    print('HTTPGetTrackService start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().get(
      ApiUrl.getTrack,
      queryParameters: data,
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
      }),
    );
    print('url : ${ApiUrl.getTrack}');
    print('params : $data');
    print('response : ${response.data}');

    if (response.statusCode == 200) {
      final result = TrackRes.fromJson(
          response.data['data'] as Map<String, dynamic>);
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, DataTrackRes>> detailsTrack({
    required String id,
  }) async {
    print('HTTPGetDetailsTrackService start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().get(
      ApiUrl.detailsTrack + id,
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
      }),
    );
    print('url : ${ApiUrl.detailsTrack + id}');
    print('response : ${response.data}');

    if (response.statusCode == 200) {
      final result = DataTrackRes.fromJson(
          response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }
}
