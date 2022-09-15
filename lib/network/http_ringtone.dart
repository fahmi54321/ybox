import 'dart:developer';

import 'package:cloud_storage/controllers/user_controller.dart';
import 'package:cloud_storage/models/audio/audio_res.dart';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/network/api_interceptor.dart';
import 'package:cloud_storage/network/api_url.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' as gets;

class HTTPRingtone {
  Future<Either<String, int>> uploadRingtone({
    required FormData data,
  }) async {
    print('HTTPRingtone start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().post(
          ApiUrl.saveRingtone,
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ' + loginRes.access_token,
            'Accept': 'application/json',
          }),
        );

    log('url : ${ApiUrl.saveRingtone}');
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

  Future<Either<String, int>> editAudio({
    required int id,
    required FormData data,
  }) async {
    log('HTTPAudio start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().post(
      ApiUrl.editAudio + id.toString(),
      data: data,
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
        'Accept': 'application/json',
      }),
    );

    log('url : ${ApiUrl.editAudio + id.toString()}');
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

  Future<Either<String, AudioRes>> getRingtone({
    required Map<String, dynamic> data,
  }) async {
    print('HTTPGetRingtoneService start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().get(
      ApiUrl.getRingtone,
      queryParameters: data,
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
      }),
    );
    print('url : ${ApiUrl.getRingtone}');
    print('params : $data');
    print('response : ${response.data}');

    if (response.statusCode == 200) {
      final result = AudioRes.fromJson(
          response.data['data'] as Map<String, dynamic>);
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, DataAudioRes>> detailsRingtone({
    required String id,
  }) async {
    print('HTTPGetDetailsRingtoneService start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().get(
      ApiUrl.detailsRingtone + id,
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
      }),
    );
    print('url : ${ApiUrl.detailsRingtone + id}');
    print('response : ${response.data}');

    if (response.statusCode == 200) {
      final result = DataAudioRes.fromJson(
          response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }
}
