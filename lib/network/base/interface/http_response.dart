// abstract class HttpResponse on bla bla{  // hanya bisa digunakan
//                                          // class tertentu
//   int suksesManipulasiData(int code){
//     return code;
//   }
//
// }

import 'dart:developer';

import 'package:cloud_storage/models/album/album_res.dart';

abstract class BaseResponse {
  BaseResponse.fromJson(Map<String, dynamic> json);
}

mixin HttpResponse {
  int isSukses(int code) {
    return code;
  }

  String isError(String msg) {
    return msg;
  }

  E suksesGetData<E>(
    Map<String, dynamic> jsonData,
  ) {
    log('$E');

    switch (E) {
      case AlbumRes:
        return AlbumRes.fromJson(jsonData) as E;
      case DataAlbumRes:
        return DataAlbumRes.fromJson(jsonData) as E;
      default:
        throw UnsupportedError('Not Supported Type');
    }
  }
}
