// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenreRes _$$_GenreResFromJson(Map json) => $checkedCreate(
      r'_$_GenreRes',
      json,
      ($checkedConvert) {
        final val = _$_GenreRes(
          id: $checkedConvert('id', (v) => v as int? ?? 0),
          name: $checkedConvert('name', (v) => v as String? ?? ''),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_GenreResToJson(_$_GenreRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
