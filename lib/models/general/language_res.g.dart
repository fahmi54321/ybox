// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageRes _$$_LanguageResFromJson(Map json) => $checkedCreate(
      r'_$_LanguageRes',
      json,
      ($checkedConvert) {
        final val = _$_LanguageRes(
          id: $checkedConvert('id', (v) => v as int? ?? 0),
          name: $checkedConvert('name', (v) => v as String? ?? ''),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_LanguageResToJson(_$_LanguageRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
