// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationRes _$$_PaginationResFromJson(Map json) => $checkedCreate(
      r'_$_PaginationRes',
      json,
      ($checkedConvert) {
        final val = _$_PaginationRes(
          lastPage: $checkedConvert('last_page', (v) => v as int? ?? 0),
          perPage: $checkedConvert('per_page', (v) => v as int? ?? 0),
          total: $checkedConvert('total', (v) => v as int? ?? 0),
        );
        return val;
      },
      fieldKeyMap: const {'lastPage': 'last_page', 'perPage': 'per_page'},
    );

Map<String, dynamic> _$$_PaginationResToJson(_$_PaginationRes instance) =>
    <String, dynamic>{
      'last_page': instance.lastPage,
      'per_page': instance.perPage,
      'total': instance.total,
    };
