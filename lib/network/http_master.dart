// import 'package:dinas_perindustrian_iinikos_mobile/model/laporan/kalender.dart';
// import 'package:dinas_perindustrian_iinikos_mobile/model/master/master_ibadah.dart';
// import 'package:dinas_perindustrian_iinikos_mobile/model/master/master_ormas.dart';
// import 'package:dinas_perindustrian_iinikos_mobile/model/master/master_partai.dart';
// import 'package:dartz/dartz.dart';
// import 'package:dinas_perindustrian_iinikos_mobile/model/login_res.dart';
// import 'package:dinas_perindustrian_iinikos_mobile/network/api_interceptor.dart';
// import 'package:dinas_perindustrian_iinikos_mobile/network/api_url.dart';
// import 'package:dinas_perindustrian_iinikos_mobile/resource/constant.dart';
// import 'package:dio/dio.dart';

// class HTTPMasterService {
//   Future<Either<String, List<MasterOrmas>>> getDataOrmas(
//       {required Map<String, dynamic> data, required String appToken}) async {
//     print('HTTPStockService start');
//     final response = await WebService().client().get(
//           ApiUrl.masterOrmas,
//           queryParameters: data,
//           options: Options(headers: {
//             'Authorization': 'Bearer ' + appToken,
//           }),
//         );

//     if (response.statusCode == 200) {
//       late final List<MasterOrmas> result;

//       var dataList = response.data['data']['data'] as List;
//       if (dataList.isNotEmpty) {
//         final data = dataList
//             .map((e) => MasterOrmas.fromJson(e as Map<String, dynamic>))
//             .toList();
//         return Right(data);
//       } else {
//         result = <MasterOrmas>[];
//         return Right(result);
//       }
//     } else {
//       return Left('Terjadi kesalahan' as String);
//     }
//   }

//   Future<Either<String, List<MasterTempatIbadah>>> getDataTempatIbadah(
//       {required Map<String, dynamic> data, required String appToken}) async {
//     print('HTTPStockService start');
//     final response = await WebService().client().get(
//           ApiUrl.masterIbadah,
//           queryParameters: data,
//           options: Options(headers: {
//             'Authorization': 'Bearer ' + appToken,
//           }),
//         );

//     if (response.statusCode == 200) {
//       late final List<MasterTempatIbadah> result;

//       var dataList = response.data['data']['data'] as List;
//       if (dataList.isNotEmpty) {
//         final data = dataList
//             .map((e) => MasterTempatIbadah.fromJson(e as Map<String, dynamic>))
//             .toList();
//         return Right(data);
//       } else {
//         result = <MasterTempatIbadah>[];
//         return Right(result);
//       }
//     } else {
//       return Left('Terjadi kesalahan' as String);
//     }
//   }

//   Future<Either<String, List<MasterPartai>>> getDataPartai(
//       {required Map<String, dynamic> data, required String appToken}) async {
//     print('HTTPStockService start');
//     final response = await WebService().client().get(
//           ApiUrl.masterPartai,
//           queryParameters: data,
//           options: Options(headers: {
//             'Authorization': 'Bearer ' + appToken,
//           }),
//         );

//     if (response.statusCode == 200) {
//       late final List<MasterPartai> result;

//       var dataList = response.data['data']['data'] as List;
//       if (dataList.isNotEmpty) {
//         final data = dataList
//             .map((e) => MasterPartai.fromJson(e as Map<String, dynamic>))
//             .toList();
//         return Right(data);
//       } else {
//         result = <MasterPartai>[];
//         return Right(result);
//       }
//     } else {
//       return Left('Terjadi kesalahan' as String);
//     }
//   }

//   Future<Either<String, List<KalenderRes>>> getDataKalender(
//       {required Map<String, dynamic> data, required String appToken}) async {
//     print('HTTPStockService start');
//     final response = await WebService().client().get(
//           ApiUrl.kalender,
//           queryParameters: data,
//           options: Options(headers: {
//             'Authorization': 'Bearer ' + appToken,
//           }),
//         );

//     if (response.statusCode == 200) {
//       late final List<KalenderRes> result;

//       var dataList = response.data['data'] as List;
//       if (dataList.isNotEmpty) {
//         final data = dataList
//             .map((e) => KalenderRes.fromJson(e as Map<String, dynamic>))
//             .toList();
//         return Right(data);
//       } else {
//         result = <KalenderRes>[];
//         return Right(result);
//       }
//     } else {
//       return Left('Terjadi kesalahan' as String);
//     }
//   }
// }
