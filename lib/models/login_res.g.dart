// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginRes _$$_LoginResFromJson(Map json) => $checkedCreate(
      r'_$_LoginRes',
      json,
      ($checkedConvert) {
        final val = _$_LoginRes(
          message: $checkedConvert('message', (v) => v as String? ?? ''),
          access_token:
              $checkedConvert('access_token', (v) => v as String? ?? ''),
          id: $checkedConvert('id', (v) => v as int? ?? 0),
          level: $checkedConvert('level', (v) => v as int? ?? 0),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_LoginResToJson(_$_LoginRes instance) =>
    <String, dynamic>{
      'message': instance.message,
      'access_token': instance.access_token,
      'id': instance.id,
      'level': instance.level,
    };
