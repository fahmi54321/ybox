import 'package:cloud_storage/network/api_url.dart';
import 'package:cloud_storage/network/base/http_form.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HTTPTrack {

  HTTPForm httpForm = HTTPForm();

  Future<Either<String, int>> uploadTrack({
    required FormData data,
  })  {
    return httpForm.uploadForm(data: data, urlApi: ApiUrl.saveTrack);
  }

  Future<Either<String, TrackRes>> getTrack<TrackRes>({
    required Map<String, dynamic> data,
  })  {
    return httpForm.getForm(data: data, urlApi: ApiUrl.getTrack);
  }

  Future<Either<String, DataTrackRes>> detailsTrack<DataTrackRes>({
    required String id,
  }) async {
    return httpForm.detailsForm(id: id, urlApi: ApiUrl.detailsTrack);
  }
}
