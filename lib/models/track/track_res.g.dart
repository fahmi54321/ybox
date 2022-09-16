// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrackRes _$$_TrackResFromJson(Map json) => $checkedCreate(
      r'_$_TrackRes',
      json,
      ($checkedConvert) {
        final val = _$_TrackRes(
          data: $checkedConvert(
              'data',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => DataTrackRes.fromJson(
                          Map<String, dynamic>.from(e as Map)))
                      .toList() ??
                  []),
          pagination: $checkedConvert(
              'pagination',
              (v) =>
                  PaginationRes.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_TrackResToJson(_$_TrackRes instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination.toJson(),
    };

_$_DataTrackRes _$$_DataTrackResFromJson(Map json) => $checkedCreate(
      r'_$_DataTrackRes',
      json,
      ($checkedConvert) {
        final val = _$_DataTrackRes(
          id: $checkedConvert('id', (v) => v as int? ?? 0),
          isCheck: $checkedConvert('is_check', (v) => v as int? ?? 0),
          artisName: $checkedConvert('artis_name', (v) => v as String? ?? ''),
          artisNameAnotherId:
              $checkedConvert('artis_name_another_id', (v) => v as int? ?? 0),
          image: $checkedConvert('image', (v) => v as String? ?? ''),
          cover: $checkedConvert('cover', (v) => v as String? ?? ''),
          trackTitle: $checkedConvert('track_title', (v) => v as String? ?? ''),
          trackVersion:
              $checkedConvert('track_version', (v) => v as String? ?? ''),
          trackTitleAnotherId:
              $checkedConvert('track_title_another_id', (v) => v as int? ?? 0),
          isrc: $checkedConvert('isrc', (v) => v as int? ?? 0),
          createdAt: $checkedConvert('created_at', (v) => v as String? ?? ''),
          spotify: $checkedConvert('spotify', (v) => v as String? ?? ''),
          itunes: $checkedConvert('itunes', (v) => v as String? ?? ''),
          otherArtisId:
              $checkedConvert('other_artis_id', (v) => v as int? ?? 0),
          explisitLyric:
              $checkedConvert('explisit_lyric', (v) => v as int? ?? 0),
          thisTrackIs: $checkedConvert('this_track_is', (v) => v as int? ?? 0),
          pCopyright: $checkedConvert('p_copyright', (v) => v as String? ?? ''),
          previewsStartTime:
              $checkedConvert('previews_start_time', (v) => v as int? ?? 0),
          labelName: $checkedConvert('label_name', (v) => v as String? ?? ''),
          internalTrackId:
              $checkedConvert('internal_track_id', (v) => v as int? ?? 0),
          lyric: $checkedConvert('lyric', (v) => v as String? ?? ''),
          contributorId:
              $checkedConvert('contributor_id', (v) => v as String? ?? ''),
          contributor: $checkedConvert(
              'contributor',
              (v) => v == null
                  ? null
                  : ConstributorRes.fromJson(
                      Map<String, dynamic>.from(v as Map))),
          lang: $checkedConvert(
              'lang_lyric',
              (v) => v == null
                  ? null
                  : LanguageRes.fromJson(Map<String, dynamic>.from(v as Map))),
          genre1: $checkedConvert(
              'genre_1',
              (v) => v == null
                  ? null
                  : GenreRes.fromJson(Map<String, dynamic>.from(v as Map))),
          genre2: $checkedConvert(
              'genre_2',
              (v) => v == null
                  ? null
                  : GenreRes.fromJson(Map<String, dynamic>.from(v as Map))),
          user: $checkedConvert(
              'user',
              (v) => v == null
                  ? null
                  : UserRes.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'isCheck': 'is_check',
        'artisName': 'artis_name',
        'artisNameAnotherId': 'artis_name_another_id',
        'trackTitle': 'track_title',
        'trackVersion': 'track_version',
        'trackTitleAnotherId': 'track_title_another_id',
        'createdAt': 'created_at',
        'otherArtisId': 'other_artis_id',
        'explisitLyric': 'explisit_lyric',
        'thisTrackIs': 'this_track_is',
        'pCopyright': 'p_copyright',
        'previewsStartTime': 'previews_start_time',
        'labelName': 'label_name',
        'internalTrackId': 'internal_track_id',
        'contributorId': 'contributor_id',
        'lang': 'lang_lyric',
        'genre1': 'genre_1',
        'genre2': 'genre_2'
      },
    );

Map<String, dynamic> _$$_DataTrackResToJson(_$_DataTrackRes instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'is_check': instance.isCheck,
    'artis_name': instance.artisName,
    'artis_name_another_id': instance.artisNameAnotherId,
    'image': instance.image,
    'cover': instance.cover,
    'track_title': instance.trackTitle,
    'track_version': instance.trackVersion,
    'track_title_another_id': instance.trackTitleAnotherId,
    'isrc': instance.isrc,
    'created_at': instance.createdAt,
    'spotify': instance.spotify,
    'itunes': instance.itunes,
    'other_artis_id': instance.otherArtisId,
    'explisit_lyric': instance.explisitLyric,
    'this_track_is': instance.thisTrackIs,
    'p_copyright': instance.pCopyright,
    'previews_start_time': instance.previewsStartTime,
    'label_name': instance.labelName,
    'internal_track_id': instance.internalTrackId,
    'lyric': instance.lyric,
    'contributor_id': instance.contributorId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('contributor', instance.contributor?.toJson());
  writeNotNull('lang_lyric', instance.lang?.toJson());
  writeNotNull('genre_1', instance.genre1?.toJson());
  writeNotNull('genre_2', instance.genre2?.toJson());
  writeNotNull('user', instance.user?.toJson());
  return val;
}
