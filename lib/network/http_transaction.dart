import 'dart:developer';

import 'package:cloud_storage/controllers/user_controller.dart';
import 'package:cloud_storage/models/album/album_res.dart';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/models/transaction/transaction_res.dart';
import 'package:cloud_storage/network/api_interceptor.dart';
import 'package:cloud_storage/network/api_url.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' as gets;

class HTTPTransaction {
  Future<Either<String, int>> uploadTransaction({
    required FormData data,
  }) async {
    print('HTTPTransaction start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().post(
          ApiUrl.saveTransaction,
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ' + loginRes.access_token,
            'Accept': 'application/json',
          }),
        );

    log('url : ${ApiUrl.saveTransaction}');
    log('response : ${response.data}');


    if (response.statusCode == 200) {
      return Right(response.statusCode??0);
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, TransactionRes>> getTransaction({
    required Map<String, dynamic> data,
}) async {
    print('HTTPGetTransactionService start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().get(
      ApiUrl.getTransaction,
      queryParameters: data,
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
      }),
    );
    print('url : ${ApiUrl.getTransaction}');
    print('params : ${data}');
    print('response : ${response.data}');

    if (response.statusCode == 200) {
      final result = TransactionRes.fromJson(
          response.data['data'] as Map<String, dynamic>);
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, DataTransactionRes>> detailsTransaction({
    required String id,
  }) async {
    print('HTTPGetDetailsTransactionService start');

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().get(
      ApiUrl.detailsTransaction + id,
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
      }),
    );
    print('url : ${ApiUrl.detailsTransaction + id}');
    print('response : ${response.data}');

    if (response.statusCode == 200) {
      final result = DataTransactionRes.fromJson(
          response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }
}
