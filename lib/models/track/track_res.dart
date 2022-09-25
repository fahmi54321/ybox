import 'package:cloud_storage/models/general/constributor_res.dart';
import 'package:cloud_storage/models/general/genre_res.dart';
import 'package:cloud_storage/models/general/label_res.dart';
import 'package:cloud_storage/models/general/language_res.dart';
import 'package:cloud_storage/models/general/pagination_res.dart';
import 'package:cloud_storage/models/general/user_res.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'track_res.g.dart';

part 'track_res.freezed.dart';

@freezed
class TrackRes with _$TrackRes {
  const TrackRes._();

  @JsonSerializable(
      anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
  const factory TrackRes({
    @JsonKey(name: 'data', defaultValue: []) required List<DataTrackRes> data,
    @JsonKey(name: 'pagination',)
        required PaginationRes pagination,
  }) = _TrackRes;

  factory TrackRes.fromJson(Map<String, dynamic> json) =>
      _$TrackResFromJson(json);
}

@freezed
class DataTrackRes with _$DataTrackRes {
  const DataTrackRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory DataTrackRes({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'is_check', defaultValue: 0) required int isCheck,
    @JsonKey(name: 'artis_name', defaultValue: '') required String artisName,
    @JsonKey(name: 'artis_name_another_id', defaultValue: 0) required int artisNameAnotherId,
    @JsonKey(name: 'image', defaultValue: '') required String image,
    @JsonKey(name: 'cover', defaultValue: '') required String cover,
    @JsonKey(name: 'track_title', defaultValue: '') required String trackTitle,
    @JsonKey(name: 'track_version', defaultValue: '') required String trackVersion,
    @JsonKey(name: 'track_title_another_id', defaultValue: 0) required int trackTitleAnotherId,
    @JsonKey(name: 'isrc', defaultValue: 0) required int isrc,
    @JsonKey(name: 'created_at', defaultValue: '') required String createdAt,
    @JsonKey(name: 'spotify', defaultValue: '') required String spotify,
    @JsonKey(name: 'itunes', defaultValue: '') required String itunes,
    @JsonKey(name: 'other_artis_id', defaultValue: 0) required int otherArtisId,
    @JsonKey(name: 'explisit_lyric', defaultValue: 0) required int explisitLyric,
    @JsonKey(name: 'this_track_is', defaultValue: 0) required int thisTrackIs,
    @JsonKey(name: 'p_copyright', defaultValue: '') required String pCopyright,
    @JsonKey(name: 'previews_start_time', defaultValue: 0) required int previewsStartTime,
    @JsonKey(name: 'label_name') LabelRes? labelName,
    @JsonKey(name: 'internal_track_id', defaultValue: 0) required int internalTrackId,
    @JsonKey(name: 'lyric', defaultValue: '') required String lyric,
    @JsonKey(name: 'contributor_id', defaultValue: '') required String contributorId,
    @JsonKey(name: 'contributor') ConstributorRes? contributor,
    @JsonKey(name: 'lang_lyric') LanguageRes? lang,
    @JsonKey(name: 'genre_1') GenreRes? genre1,
    @JsonKey(name: 'genre_2') GenreRes? genre2,
    @JsonKey(name: 'user') UserRes? user,
  }) = _DataTrackRes;

  factory DataTrackRes.fromJson(Map<String, dynamic> json) =>
      _$DataTrackResFromJson(json);
}
