import 'package:cloud_storage/network/api_url.dart';
import 'package:cloud_storage/network/base/http_form.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HTTPAlbum {

  HTTPForm httpForm = HTTPForm();


  Future<Either<String, int>> uploadFormAlbum({required FormData data}) {
    return httpForm.uploadForm(data: data,urlApi: ApiUrl.saveAlbum);
  }

  Future<Either<String, int>> editFormAlbum({
    required int id,
    required FormData data,
  }) {
    return httpForm.editForm(id: id, data: data,urlApi: ApiUrl.editAlbum);
  }

  Future<Either<String, AlbumRes>> getFormAlbum<AlbumRes>({
    required Map<String, dynamic> data,

  }) {
    return httpForm.getForm(data: data,urlApi: ApiUrl.getAlbum);
  }

  Future<Either<String, DataAlbumRes>> detailsFormAlbum<DataAlbumRes>({
    required String id,
  }) {
    return httpForm.detailsForm(id: id,urlApi: ApiUrl.detailsAlbum);
  }
}
