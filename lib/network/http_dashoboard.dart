import 'package:cloud_storage/controllers/user_controller.dart';
import 'package:cloud_storage/models/general/genre_res.dart';
import 'package:cloud_storage/models/general/label_res.dart';
import 'package:cloud_storage/models/general/language_res.dart';
import 'package:cloud_storage/models/general/publishing_res.dart';
import 'package:cloud_storage/models/general/roles_res.dart';
import 'package:cloud_storage/models/grafik/grafik_res.dart';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/network/api_interceptor.dart';
import 'package:cloud_storage/network/api_url.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HTTPDashboard {

  Future<Either<String, int>> countAlbum() async {
    print('HTTPCountAlbum start');
    final getUser = Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    Map<String, dynamic> data = {
      'level': loginRes.level.toString(),
      'id': loginRes.id.toString(),
    };

    final response = await WebService().client().post(
          ApiUrl.countAlbum,
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ' + loginRes.access_token,
          }),
        );

    print('response count album : ${response.data}');

    if (response.statusCode == 200) {
      int result = response.data['count'];
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, int>> countVideo() async {
    print('HTTPCountVideo start');
    final getUser = Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    Map<String, dynamic> data = {
      'level': loginRes.level.toString(),
      'id': loginRes.id.toString(),
    };

    final response = await WebService().client().post(
      ApiUrl.countVideo,
      data: data,
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
      }),
    );

    print('response video : ${response.data}');

    if (response.statusCode == 200) {
      int result = response.data['count'];
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, int>> countAudio() async {
    print('HTTPCountAudio start');
    final getUser = Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    Map<String, dynamic> data = {
      'level': loginRes.level.toString(),
      'id': loginRes.id.toString(),
    };

    final response = await WebService().client().post(
      ApiUrl.countRingtone,
      data: data,
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
      }),
    );

    print('response audio : ${response.data}');

    if (response.statusCode == 200) {
      int result = response.data['count'];
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, int>> countTrack() async {
    print('HTTPCountTrack start');
    final getUser = Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    Map<String, dynamic> data = {
      'level': loginRes.level.toString(),
      'id': loginRes.id.toString(),
    };

    final response = await WebService().client().post(
      ApiUrl.countTrack,
      data: data,
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
      }),
    );

    print('response track : ${response.data}');

    if (response.statusCode == 200) {
      int result = response.data['count'];
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, int>> countSetup() async {
    print('HTTPCountSetup start');
    final getUser = Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    Map<String, dynamic> data = {
      'level': loginRes.level.toString(),
      'id': loginRes.id.toString(),
    };

    final response = await WebService().client().post(
      ApiUrl.countSetup,
      data: data,
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
      }),
    );

    print('response setup : ${response.data}');

    if (response.statusCode == 200) {
      int result = response.data['count'];
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, String>> countAmount() async {
    print('HTTPCountAmount start');
    final getUser = Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    final response = await WebService().client().get(
      ApiUrl.countAmount+'${loginRes.id}',
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
      }),
    );

    print('response amount : ${response.data}');
    print('url : ${ApiUrl.countAmount}${loginRes.id}');

    if (response.statusCode == 200) {
      String result = response.data['count'];
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, int>> cekReq() async {
    print('HTTPCekReq start');
    final getUser = Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    Map<String, dynamic> data = {
      'id': loginRes.id.toString(),
    };

    final response = await WebService().client().get(
      ApiUrl.cekReq,
      queryParameters: data,
      options: Options(headers: {
        'Authorization': 'Bearer ' + loginRes.access_token,
      }),
    );

    print('response cek req : ${response.data}');
    print('url : ${ApiUrl.cekReq}${loginRes.id}');

    if (response.statusCode == 200) {
      int result = response.data['count'];
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }


}
