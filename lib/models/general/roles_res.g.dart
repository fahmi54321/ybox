// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RolesRes _$$_RolesResFromJson(Map json) => $checkedCreate(
      r'_$_RolesRes',
      json,
      ($checkedConvert) {
        final val = _$_RolesRes(
          id: $checkedConvert('id', (v) => v as int? ?? 0),
          name: $checkedConvert('name', (v) => v as String? ?? ''),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_RolesResToJson(_$_RolesRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
