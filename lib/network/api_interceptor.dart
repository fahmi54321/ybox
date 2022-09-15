import 'dart:developer';
import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' as get_package;
import 'package:cloud_storage/utils/shared_pref.dart';

class ApiInterceptor extends InterceptorsWrapper {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    // TODO: implement onResponse
    super.onResponse(response, handler);
    // if (response.statusCode == 401) {
    //   log(" inject Logout");
    //   // get_package.Get.snackbar("Access Denied", "401",
    //   //     duration: Duration(seconds: 3));
    //   // await SharedPreferencesUtils.clearLoginPreference();
    //   // await get_package.Get.offAll(LoginPage());
    // } else {
    //   // return response;
    // }
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {

    print(err.response?.statusCode);

    if ((err.response!.statusCode ?? 0) == 401) {
      log(" inject Logout");
      get_package.Get.snackbar("Access Denied", "401",
          duration: Duration(seconds: 3));
      // get_package.Get.offAllNamed(LoginPage.ROUTE);
    } else if (err.response!.statusCode == 502) {
      log(" inject 502 ${err.requestOptions.uri.toString()}");
      get_package.Get.snackbar("Timeout ", "502",
          duration: Duration(seconds: 3));
    } else {
      err.printError();
    }
  }
}

class WebService {
  Dio client() {
    final dio = Dio(BaseOptions(
      validateStatus: (status) => true,
      // headers: {
      //   HttpHeaders.userAgentHeader: 'dio',
      //   'api': '1.0.0',
      // },
    ));

    dio.interceptors.add(ApiInterceptor());
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    return dio;
  }
}
