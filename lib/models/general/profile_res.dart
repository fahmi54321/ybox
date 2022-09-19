import 'package:cloud_storage/models/general/pagination_res.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_res.g.dart';

part 'profile_res.freezed.dart';

@freezed
class ProfileRes with _$ProfileRes {
  const ProfileRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory ProfileRes({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'image', defaultValue: '') required String image,
    @JsonKey(name: 'first_name', defaultValue: '') required String firstName,
    @JsonKey(name: 'last_name', defaultValue: '') required String lastName,
    @JsonKey(name: 'level_id', defaultValue: 0) required int levelId,
  }) = _ProfileRes;

  factory ProfileRes.fromJson(Map<String, dynamic> json) =>
      _$ProfileResFromJson(json);
}
