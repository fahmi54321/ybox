import 'package:cloud_storage/models/album/album_res.dart';
import 'package:cloud_storage/models/general/language_res.dart';
import 'package:cloud_storage/models/general/pagination_res.dart';
import 'package:cloud_storage/models/general/publishing_res.dart';
import 'package:cloud_storage/models/general/roles_res.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../general/genre_res.dart';
import '../general/user_res.dart';

part 'constributor_res.g.dart';

part 'constributor_res.freezed.dart';

@freezed
class ConstributorRes with _$ConstributorRes {
  const ConstributorRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory ConstributorRes({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'role_id', defaultValue: 0) required int roleId,
    @JsonKey(name: 'share', defaultValue: 0) required int share,
    @JsonKey(name: 'publishing_id', defaultValue: 0) required int publishingId,
    @JsonKey(name: 'role_track') RolesRes? roleTrack,
    @JsonKey(name: 'publising') PublishingRes? publising,
  }) = _ConstributorRes;

  factory ConstributorRes.fromJson(Map<String, dynamic> json) =>
      _$ConstributorResFromJson(json);
}
