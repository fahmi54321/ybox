import 'dart:developer';

import 'package:cloud_storage/controllers/user_controller.dart';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/network/api_interceptor.dart';
import 'package:cloud_storage/network/api_url.dart';
import 'package:cloud_storage/network/base/interface/iHttp_form.dart';
import 'package:cloud_storage/network/base/http_response.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' as gets;

class HTTPForm extends HttpResponse implements IHttpForm {
  static final HTTPForm _instance = HTTPForm._internal();

  HTTPForm._internal();

  factory HTTPForm() {
    return _instance;
  }

  @override
  Future<Either<String, int>> uploadForm({
    required FormData data,
    required String urlApi,
  }) async {
    print('HTTPForm start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().post(
          urlApi,
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ' + loginRes.access_token,
            'Accept': 'application/json',
          }),
        );

    log('url : $urlApi');
    log('response : ${response.data}');
    log('params : ${data.fields}');

    if (response.statusCode == 200) {
      return Right(isSukses(200));
    } else if (response.statusCode == 422) {
      return Left(
        isError('Audio atau gambar formatnya kurang valid'),
      );
    } else {
      return Left(
        isError(
          'Terjadi kesalahan',
        ),
      );
    }
  }

  @override
  Future<Either<String, int>> editForm({
    required int id,
    required FormData data,
    required String urlApi,
  }) async {
    log('HTTPForm start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().post(
          urlApi + id.toString(),
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ' + loginRes.access_token,
            'Accept': 'application/json',
          }),
        );

    log('url : ${urlApi + id.toString()}');
    log('response : ${response.data}');
    log('params : ${data.fields}');

    if (response.statusCode == 200) {
      return Right(
        isSukses(
          200,
        ),
      );
    } else if (response.statusCode == 422) {
      return Left(
        isError(
          'Audio atau gambar formatnya kurang valid',
        ),
      );
    } else {
      return Left(
        isError(
          'Terjadi kesalahan',
        ),
      );
    }
  }

  @override
  Future<Either<String, T>> getForm<T>({
    required Map<String, dynamic> data,
    required String urlApi,
  }) async {
    print('HTTPGetService start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().get(
          urlApi,
          queryParameters: data,
          options: Options(headers: {
            'Authorization': 'Bearer ' + loginRes.access_token,
          }),
        );
    print('url : ${urlApi}');
    print('params : $data');
    print('response : ${response.data}');

    if (response.statusCode == 200) {
      return Right(
        suksesGetData(
          response.data['data'],
        ),
      );
    } else {
      return Left(isError('Terjadi kesalahan'));
    }
  }

  @override
  Future<Either<String, T>> detailsForm<T>({
    required String id,
    required String urlApi,
  }) async {
    print('HTTPGetDetailsService start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().get(
      urlApi + id,
          options: Options(headers: {
            'Authorization': 'Bearer ' + loginRes.access_token,
          }),
        );
    print('url : ${urlApi + id}');
    print('response : ${response.data}');

    if (response.statusCode == 200) {
      return Right(
        suksesGetData(
          response.data,
        ),
      );
    } else {
      return Left(
        isError('Terjadi kesalahan'),
      );
    }
  }
}
