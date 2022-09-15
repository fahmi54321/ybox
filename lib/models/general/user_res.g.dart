// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserRes _$$_UserResFromJson(Map json) => $checkedCreate(
      r'_$_UserRes',
      json,
      ($checkedConvert) {
        final val = _$_UserRes(
          firstName: $checkedConvert('first_name', (v) => v as String? ?? ''),
          lastName: $checkedConvert('last_name', (v) => v as String? ?? ''),
        );
        return val;
      },
      fieldKeyMap: const {'firstName': 'first_name', 'lastName': 'last_name'},
    );

Map<String, dynamic> _$$_UserResToJson(_$_UserRes instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };
