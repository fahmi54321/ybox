import 'package:cloud_storage/network/api_url.dart';
import 'package:cloud_storage/network/base/http_form.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HTTPRingtone {

  HTTPForm httpForm = HTTPForm();

  Future<Either<String, int>> uploadRingtone({
    required FormData data,
  }) {
    return httpForm.uploadForm(data: data, urlApi: ApiUrl.saveRingtone);
  }

  Future<Either<String, int>> editAudio({
    required int id,
    required FormData data,
  }) {
    return httpForm.editForm(id: id, data: data, urlApi: ApiUrl.editAudio);
  }

  Future<Either<String, AudioRes>> getRingtone<AudioRes>({
    required Map<String, dynamic> data,
  }) {
    return httpForm.getForm(data: data, urlApi: ApiUrl.getRingtone);
  }

  Future<Either<String, DataAudioRes>> detailsRingtone<DataAudioRes>({
    required String id,
  })  {
    return httpForm.detailsForm(id: id, urlApi: ApiUrl.detailsRingtone);
  }
}
