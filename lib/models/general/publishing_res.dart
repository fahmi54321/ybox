import 'package:freezed_annotation/freezed_annotation.dart';

part 'publishing_res.g.dart';

part 'publishing_res.freezed.dart';

@freezed
class PublishingRes with _$PublishingRes {
  const PublishingRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory PublishingRes({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
  }) = _PublishingRes;

  factory PublishingRes.fromJson(Map<String, dynamic> json) =>
      _$PublishingResFromJson(json);
}
