// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileRes _$$_ProfileResFromJson(Map json) => $checkedCreate(
      r'_$_ProfileRes',
      json,
      ($checkedConvert) {
        final val = _$_ProfileRes(
          id: $checkedConvert('id', (v) => v as int? ?? 0),
          image: $checkedConvert('image', (v) => v as String? ?? ''),
          firstName: $checkedConvert('first_name', (v) => v as String? ?? ''),
          lastName: $checkedConvert('last_name', (v) => v as String? ?? ''),
          levelId: $checkedConvert('level_id', (v) => v as int? ?? 0),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'levelId': 'level_id'
      },
    );

Map<String, dynamic> _$$_ProfileResToJson(_$_ProfileRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'level_id': instance.levelId,
    };
