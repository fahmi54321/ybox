// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publishing_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PublishingRes _$$_PublishingResFromJson(Map json) => $checkedCreate(
      r'_$_PublishingRes',
      json,
      ($checkedConvert) {
        final val = _$_PublishingRes(
          id: $checkedConvert('id', (v) => v as int? ?? 0),
          name: $checkedConvert('name', (v) => v as String? ?? ''),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_PublishingResToJson(_$_PublishingRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
