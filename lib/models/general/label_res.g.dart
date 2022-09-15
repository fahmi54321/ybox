// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'label_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LabelRes _$$_LabelResFromJson(Map json) => $checkedCreate(
      r'_$_LabelRes',
      json,
      ($checkedConvert) {
        final val = _$_LabelRes(
          id: $checkedConvert('id', (v) => v as int? ?? 0),
          nama: $checkedConvert('nama', (v) => v as String? ?? ''),
          labelCode: $checkedConvert('label_code', (v) => v as int? ?? 0),
        );
        return val;
      },
      fieldKeyMap: const {'labelCode': 'label_code'},
    );

Map<String, dynamic> _$$_LabelResToJson(_$_LabelRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'label_code': instance.labelCode,
    };
