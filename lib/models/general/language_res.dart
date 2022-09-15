import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_res.g.dart';

part 'language_res.freezed.dart';

@freezed
class LanguageRes with _$LanguageRes {
  const LanguageRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory LanguageRes({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
  }) = _LanguageRes;

  factory LanguageRes.fromJson(Map<String, dynamic> json) =>
      _$LanguageResFromJson(json);
}
