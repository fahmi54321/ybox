import 'package:freezed_annotation/freezed_annotation.dart';

part 'roles_res.g.dart';

part 'roles_res.freezed.dart';

@freezed
class RolesRes with _$RolesRes {
  const RolesRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory RolesRes({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
  }) = _RolesRes;

  factory RolesRes.fromJson(Map<String, dynamic> json) =>
      _$RolesResFromJson(json);
}
