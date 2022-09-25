import 'package:cloud_storage/controllers/user_controller.dart';
import 'package:dartz/dartz.dart';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/network/api_interceptor.dart';
import 'package:cloud_storage/network/api_url.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' as gets;

class HTTPLoginService {
  Future<Either<String, LoginRes>> login(
      {required Map<String, dynamic> data}) async {
    print('HTTPLoginService start');
    final response =
        await WebService().client().post(ApiUrl.login, queryParameters: data);
    print('url : ${ApiUrl.login}');
    print('params : $data');
    print(response);

    if (response.statusCode == 200) {
      final result = LoginRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    } else if (response.statusCode == 401) {
      final message = response.data['message'] as String;
      print('response : $message');
      return Left(message);
    } else {
      return Left('Terjadi kesalahan' as String);
    }
  }

  Future<Either<String, int>> ubahPassword({
    required Map<String, dynamic> data,
  }) async {

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    print('HTTPUbahPasswordService start');
    final response = await WebService().client().post(
          ApiUrl.ubahPass,
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ' + loginRes.access_token,
            'Accept': 'application/json',
          }),
        );
    print('url : ${ApiUrl.ubahPass}');
    print('params : $data');
    print(response);

    if (response.statusCode == 200) {
      return Right(
        response.statusCode ?? 0,
      );
    } else {
      return Left('Terjadi kesalahan' as String);
    }
  }

  Future<Either<String, int>> logout() async {

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    print('HTTPLogoutService start');
    final response = await WebService().client().post(
      ApiUrl.logout,
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
        'Accept': 'application/json',
      }),
    );
    print('url : ${ApiUrl.logout}');
    print(response);

    if (response.statusCode == 200) {
      return Right(
        response.statusCode ?? 0,
      );
    } else {
      return Left('Terjadi kesalahan' as String);
    }
  }

  Future<Either<String, int>> register({
    required Map<String, dynamic> data,
  }) async {

    print('HTTPRegisterService start');
    final response = await WebService().client().post(
      ApiUrl.register,
      queryParameters: data,
    );
    print('url : ${ApiUrl.register}');
    print('params : $data');
    print(response);

    if (response.statusCode == 200) {
      return Right(
        response.statusCode ?? 0,
      );
    } else {
      return Left('Terjadi kesalahan');
    }
  }
}
