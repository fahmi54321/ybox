import 'package:cloud_storage/models/general/pagination_res.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_res.g.dart';

part 'user_res.freezed.dart';

@freezed
class UserRes with _$UserRes {
  const UserRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory UserRes({
    @JsonKey(name: 'first_name', defaultValue: '') required String firstName,
    @JsonKey(name: 'last_name', defaultValue: '') required String lastName,
  }) = _UserRes;

  factory UserRes.fromJson(Map<String, dynamic> json) =>
      _$UserResFromJson(json);
}
