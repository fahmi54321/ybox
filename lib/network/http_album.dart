import 'dart:developer';

import 'package:cloud_storage/controllers/user_controller.dart';
import 'package:cloud_storage/models/album/album_res.dart';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/network/api_interceptor.dart';
import 'package:cloud_storage/network/api_url.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' as gets;

class HTTPAlbum {
  Future<Either<String, int>> uploadAlbum({
    required FormData data,
  }) async {
    print('HTTPAlbum start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().post(
          ApiUrl.saveAlbum,
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ' + loginRes.access_token,
            'Accept': 'application/json',
          }),
        );

    log('url : ${ApiUrl.saveAlbum}');
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

  Future<Either<String, int>> editAlbum({
    required int id,
    required FormData data,
  }) async {
    log('HTTPAlbum start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().post(
      ApiUrl.editAlbum + id.toString(),
      data: data,
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
        'Accept': 'application/json',
      }),
    );

    log('url : ${ApiUrl.editAlbum + id.toString()}');
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

  Future<Either<String, AlbumRes>> getAlbum({
    required Map<String, dynamic> data,
  }) async {
    print('HTTPGetAlbumService start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().get(
      ApiUrl.getAlbum,
      queryParameters: data,
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
      }),
    );
    print('url : ${ApiUrl.getAlbum}');
    print('params : $data');
    print('response : ${response.data}');

    if (response.statusCode == 200) {
      final result = AlbumRes.fromJson(
          response.data['data'] as Map<String, dynamic>);
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, DataAlbumRes>> detailsAlbum({
    required String id,
  }) async {
    print('HTTPGetDetailsAlbumService start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().get(
      ApiUrl.detailsAlbum + id,
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
      }),
    );
    print('url : ${ApiUrl.detailsAlbum + id}');
    print('response : ${response.data}');

    if (response.statusCode == 200) {
      final result = DataAlbumRes.fromJson(
          response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }
}
