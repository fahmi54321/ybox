// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankRes _$$_BankResFromJson(Map json) => $checkedCreate(
      r'_$_BankRes',
      json,
      ($checkedConvert) {
        final val = _$_BankRes(
          id: $checkedConvert('id', (v) => v as int? ?? 0),
          name: $checkedConvert('name', (v) => v as String? ?? ''),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_BankResToJson(_$_BankRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
