import 'package:dartz/dartz.dart';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/network/api_interceptor.dart';
import 'package:cloud_storage/network/api_url.dart';

class HTTPLoginService {
  Future<Either<String, LoginRes>> login({required Map<String, dynamic> data}) async {
    print('HTTPLoginService start');
    final response = await WebService().client().post(ApiUrl.login,queryParameters: data);
    print('url : ${ApiUrl.login}');
    print('params : $data');
    print(response);

    if (response.statusCode == 200) {
      final result = LoginRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    }else if (response.statusCode == 401) {
      final message = response.data['message'] as String;
      print('response : $message');
      return Left(message);
    } else {
      return Left('Terjadi kesalahan' as String);
    }
  }
}
