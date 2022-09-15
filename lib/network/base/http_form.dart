import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'interface/http_response.dart';

abstract class HttpForm {
  Future<Either<String, int>> uploadForm({
    required FormData data,
  });

  Future<Either<String, int>> editForm({
    required int id,
    required FormData data,
  });

  Future<Either<String, T>> getForm<T>({
    required Map<String, dynamic> data,
  });

  Future<Either<String, T>> detailsForm<T>({
    required String id,
  });
}
