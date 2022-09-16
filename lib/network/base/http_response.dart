// abstract class HttpResponse on bla bla{  // hanya bisa digunakan
//                                          // class tertentu
//   int suksesManipulasiData(int code){
//     return code;
//   }
//
// }

import 'dart:developer';
import 'package:cloud_storage/models/album/album_res.dart';
import 'package:cloud_storage/models/audio/audio_res.dart';
import 'package:cloud_storage/models/track/track_res.dart';
import 'package:cloud_storage/models/video/video_res.dart';

class HttpResponse {
  int isSukses(int code) {
    return code;
  }

  String isError(String msg) {
    return msg;
  }

  E suksesGetData<E>(
    Map<String, dynamic> jsonData,
  ) {
    log('${E}');

    switch (E) {
      case AlbumRes:
        return AlbumRes.fromJson(jsonData) as E;
      case DataAlbumRes:
        return DataAlbumRes.fromJson(jsonData) as E;
      case VideoRes:
        return VideoRes.fromJson(jsonData) as E;
      case DataVideoRes:
        return DataVideoRes.fromJson(jsonData) as E;
      case AudioRes:
        return AudioRes.fromJson(jsonData) as E;
      case DataAudioRes:
        return DataAudioRes.fromJson(jsonData) as E;
      case TrackRes:
        return TrackRes.fromJson(jsonData) as E;
      case DataTrackRes:
        return DataTrackRes.fromJson(jsonData) as E;
      default:
        throw UnsupportedError('$E Not Supported Type');
    }
  }
}
