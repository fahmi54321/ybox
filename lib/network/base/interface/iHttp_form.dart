import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class IHttpForm {
  Future<Either<String, int>> uploadForm({
    required FormData data,
    required String urlApi,
  });

  Future<Either<String, int>> editForm({
    required int id,
    required FormData data,
    required String urlApi,
  });

  Future<Either<String, T>> getForm<T>({
    required Map<String, dynamic> data,
    required String urlApi,
  });

  Future<Either<String, T>> detailsForm<T>({
    required String id,
    required String urlApi,
  });
}
