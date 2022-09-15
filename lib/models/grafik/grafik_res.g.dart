// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grafik_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GrafikRes _$$_GrafikResFromJson(Map json) => $checkedCreate(
      r'_$_GrafikRes',
      json,
      ($checkedConvert) {
        final val = _$_GrafikRes(
          series: $checkedConvert(
              'series',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => DataSeries.fromJson(
                          Map<String, dynamic>.from(e as Map)))
                      .toList() ??
                  []),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_GrafikResToJson(_$_GrafikRes instance) =>
    <String, dynamic>{
      'series': instance.series.map((e) => e.toJson()).toList(),
    };

_$_DataSeries _$$_DataSeriesFromJson(Map json) => $checkedCreate(
      r'_$_DataSeries',
      json,
      ($checkedConvert) {
        final val = _$_DataSeries(
          name: $checkedConvert('name', (v) => v as String? ?? ''),
          data: $checkedConvert(
              'data',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as int).toList() ?? []),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_DataSeriesToJson(_$_DataSeries instance) =>
    <String, dynamic>{
      'name': instance.name,
      'data': instance.data,
    };
