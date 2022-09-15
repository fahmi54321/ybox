import 'package:freezed_annotation/freezed_annotation.dart';

part 'label_res.g.dart';

part 'label_res.freezed.dart';

@freezed
class LabelRes with _$LabelRes {
  const LabelRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory LabelRes({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'nama', defaultValue: '') required String nama,
    @JsonKey(name: 'label_code', defaultValue: 0) required int labelCode,
  }) = _LabelRes;

  factory LabelRes.fromJson(Map<String, dynamic> json) =>
      _$LabelResFromJson(json);
}
