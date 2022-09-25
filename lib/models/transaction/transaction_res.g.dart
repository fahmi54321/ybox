// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionRes _$$_TransactionResFromJson(Map json) => $checkedCreate(
      r'_$_TransactionRes',
      json,
      ($checkedConvert) {
        final val = _$_TransactionRes(
          data: $checkedConvert(
              'data',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => DataTransactionRes.fromJson(
                          Map<String, dynamic>.from(e as Map)))
                      .toList() ??
                  []),
          pagination: $checkedConvert(
              'pagination',
              (v) =>
                  PaginationRes.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_TransactionResToJson(_$_TransactionRes instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination.toJson(),
    };

_$_DataTransactionRes _$$_DataTransactionResFromJson(Map json) =>
    $checkedCreate(
      r'_$_DataTransactionRes',
      json,
      ($checkedConvert) {
        final val = _$_DataTransactionRes(
          id: $checkedConvert('id', (v) => v as int? ?? 0),
          member: $checkedConvert('member', (v) => v as String? ?? ''),
          nameOnBank:
              $checkedConvert('name_on_bank', (v) => v as String? ?? ''),
          requestDate:
              $checkedConvert('request_date', (v) => v as String? ?? ''),
          status: $checkedConvert('status', (v) => v as int? ?? 0),
          amount: $checkedConvert('amount', (v) => v as String? ?? ''),
        );
        return val;
      },
      fieldKeyMap: const {
        'nameOnBank': 'name_on_bank',
        'requestDate': 'request_date'
      },
    );

Map<String, dynamic> _$$_DataTransactionResToJson(
        _$_DataTransactionRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'member': instance.member,
      'name_on_bank': instance.nameOnBank,
      'request_date': instance.requestDate,
      'status': instance.status,
      'amount': instance.amount,
    };
