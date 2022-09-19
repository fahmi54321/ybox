import 'package:cloud_storage/controllers/user_controller.dart';
import 'package:cloud_storage/models/general/bank_res.dart';
import 'package:cloud_storage/models/general/genre_res.dart';
import 'package:cloud_storage/models/general/label_res.dart';
import 'package:cloud_storage/models/general/language_res.dart';
import 'package:cloud_storage/models/general/profile_res.dart';
import 'package:cloud_storage/models/general/publishing_res.dart';
import 'package:cloud_storage/models/general/roles_res.dart';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/network/api_interceptor.dart';
import 'package:cloud_storage/network/api_url.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HTTPGeneral {
  Future<Either<String, List<LanguageRes>>> getLanguage() async {
    print('HTTPLanguage start');

    final getUser = Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().get(
          ApiUrl.language,
          options: Options(headers: {
            'Authorization': 'Bearer ' + loginRes.access_token,
          }),
        );

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => LanguageRes.fromJson(e as Map<String, dynamic>))
          .toList();
      print('response language : ${response.data}');
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, List<GenreRes>>> getGenre() async {
    print('HTTPGenre start');

    final getUser = Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().get(
          ApiUrl.genre,
          options: Options(headers: {
            'Authorization': 'Bearer ' + loginRes.access_token,
          }),
        );

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => GenreRes.fromJson(e as Map<String, dynamic>))
          .toList();
      print('response genre : ${response.data}');
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, List<LabelRes>>> getLabel() async {
    print('HTTPLabel start');

    final getUser = Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().get(
          ApiUrl.label,
          options: Options(headers: {
            'Authorization': 'Bearer ' + loginRes.access_token,
          }),
        );

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => LabelRes.fromJson(e as Map<String, dynamic>))
          .toList();
      print('response label : ${response.data}');
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, List<RolesRes>>> getRoles() async {
    print('HTTPRoles start');

    final getUser = Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().get(
          ApiUrl.roles,
          options: Options(headers: {
            'Authorization': 'Bearer ' + loginRes.access_token,
          }),
        );

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => RolesRes.fromJson(e as Map<String, dynamic>))
          .toList();
      print('response roles : ${response.data}');
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, List<PublishingRes>>> getPublishing() async {
    print('HTTPPublishing start');

    final getUser = Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().get(
          ApiUrl.publishing,
          options: Options(headers: {
            'Authorization': 'Bearer ' + loginRes.access_token,
          }),
        );

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => PublishingRes.fromJson(e as Map<String, dynamic>))
          .toList();
      print('response publishing : ${response.data}');
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, List<BankRes>>> getBank() async {
    print('HTTPBank start');

    final getUser = Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().get(
          ApiUrl.getBank,
          options: Options(headers: {
            'Authorization': 'Bearer ' + loginRes.access_token,
          }),
        );

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => BankRes.fromJson(e as Map<String, dynamic>))
          .toList();
      print('response bank : ${response.data}');
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, ProfileRes>> getProfile({required String token}) async {
    print('HTTPProfileService start');
    final response = await WebService().client().get(
          ApiUrl.profile,
          options: Options(headers: {
            'Authorization': 'Bearer ' + token,
          }),
        );
    print('url : ${ApiUrl.profile}');
    print(response);

    if (response.statusCode == 200) {
      final result = ProfileRes.fromJson(
        response.data as Map<String, dynamic>,
      );
      return Right(result);
    } else {
      return Left('Terjadi kesalahan' as String);
    }
  }
}
