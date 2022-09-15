import 'package:freezed_annotation/freezed_annotation.dart';

part 'grafik_res.g.dart';

part 'grafik_res.freezed.dart';

@freezed
class GrafikRes with _$GrafikRes {
  const GrafikRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory GrafikRes({
    @JsonKey(name: 'series', defaultValue: []) required List<DataSeries> series,
  }) = _GrafikRes;

  factory GrafikRes.fromJson(Map<String, dynamic> json) =>
      _$GrafikResFromJson(json);
}

@freezed
class DataSeries with _$DataSeries {
  const DataSeries._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory DataSeries({
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'data', defaultValue: []) required List<int> data,
  }) = _DataSeries;

  factory DataSeries.fromJson(Map<String, dynamic> json) =>
      _$DataSeriesFromJson(json);
}
