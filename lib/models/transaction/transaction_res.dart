import 'package:cloud_storage/models/general/pagination_res.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_res.g.dart';

part 'transaction_res.freezed.dart';

@freezed
class TransactionRes with _$TransactionRes {
  const TransactionRes._();

  @JsonSerializable(
      anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
  const factory TransactionRes({
    @JsonKey(name: 'data', defaultValue: []) required List<DataTransactionRes> data,
    @JsonKey(name: 'pagination',)
        required PaginationRes pagination,
  }) = _TransactionRes;

  factory TransactionRes.fromJson(Map<String, dynamic> json) =>
      _$TransactionResFromJson(json);
}

@freezed
class DataTransactionRes with _$DataTransactionRes {
  const DataTransactionRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory DataTransactionRes({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'member', defaultValue: '') required String member,
    @JsonKey(name: 'name_on_bank', defaultValue: '') required String nameOnBank,
    @JsonKey(name: 'request_date', defaultValue: '') required String requestDate,
    @JsonKey(name: 'status', defaultValue: 0) required int status,
  }) = _DataTransactionRes;

  factory DataTransactionRes.fromJson(Map<String, dynamic> json) =>
      _$DataTransactionResFromJson(json);
}
