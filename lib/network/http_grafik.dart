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

class HTTPGrafik {
  Future<Either<String, List<DataSeries>>> getGrafik() async {
    print('HTTPGrafik start');

    final getUser = Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    Map<String, dynamic> data = {
      'level': loginRes.level.toString(),
      'id': loginRes.id.toString(),
    };

    final response = await WebService().client().post(
          ApiUrl.getGrafik,
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ' + loginRes.access_token,
          }),
        );

    print('response grafik : ${response.data}');

    if (response.statusCode == 200) {
      final result = (response.data['series'] as List<dynamic>)
          .map((e) => DataSeries.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(result);
    } else {
      return Left('Terjadi kesalahan');
    }
  }

}
