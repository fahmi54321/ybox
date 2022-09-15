// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlbumRes _$$_AlbumResFromJson(Map json) => $checkedCreate(
      r'_$_AlbumRes',
      json,
      ($checkedConvert) {
        final val = _$_AlbumRes(
          data: $checkedConvert(
              'data',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => DataAlbumRes.fromJson(
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

Map<String, dynamic> _$$_AlbumResToJson(_$_AlbumRes instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination.toJson(),
    };

_$_DataAlbumRes _$$_DataAlbumResFromJson(Map json) => $checkedCreate(
      r'_$_DataAlbumRes',
      json,
      ($checkedConvert) {
        final val = _$_DataAlbumRes(
          id: $checkedConvert('id', (v) => v as int? ?? 0),
          cover: $checkedConvert('cover', (v) => v as String? ?? ''),
          releaseTitle:
              $checkedConvert('release_title', (v) => v as String? ?? ''),
          titleVersion:
              $checkedConvert('title_version', (v) => v as String? ?? ''),
          spotify: $checkedConvert('spotify', (v) => v as String? ?? ''),
          itunes: $checkedConvert('itunes', (v) => v as String? ?? ''),
          pCopyright: $checkedConvert('p_copyright', (v) => v as String? ?? ''),
          cCopyright: $checkedConvert('c_copyright', (v) => v as String? ?? ''),
          releasedDate:
              $checkedConvert('released_date', (v) => v as String? ?? ''),
          labelName: $checkedConvert('label_name', (v) => v as String? ?? ''),
          releasedId: $checkedConvert('released_id', (v) => v as int? ?? 0),
          upc: $checkedConvert('upc', (v) => v as int? ?? 0),
          isCheck: $checkedConvert('is_check', (v) => v as int? ?? 0),
          langId: $checkedConvert(
              'lang_id',
              (v) => v == null
                  ? null
                  : LanguageRes.fromJson(Map<String, dynamic>.from(v as Map))),
          trackId: $checkedConvert(
              'track_id',
              (v) => v == null
                  ? null
                  : TrackIdRes.fromJson(Map<String, dynamic>.from(v as Map))),
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
              'user_id',
              (v) => v == null
                  ? null
                  : UserRes.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'releaseTitle': 'release_title',
        'titleVersion': 'title_version',
        'pCopyright': 'p_copyright',
        'cCopyright': 'c_copyright',
        'releasedDate': 'released_date',
        'labelName': 'label_name',
        'releasedId': 'released_id',
        'isCheck': 'is_check',
        'langId': 'lang_id',
        'trackId': 'track_id',
        'genre1': 'genre_1',
        'genre2': 'genre_2',
        'user': 'user_id'
      },
    );

Map<String, dynamic> _$$_DataAlbumResToJson(_$_DataAlbumRes instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'cover': instance.cover,
    'release_title': instance.releaseTitle,
    'title_version': instance.titleVersion,
    'spotify': instance.spotify,
    'itunes': instance.itunes,
    'p_copyright': instance.pCopyright,
    'c_copyright': instance.cCopyright,
    'released_date': instance.releasedDate,
    'label_name': instance.labelName,
    'released_id': instance.releasedId,
    'upc': instance.upc,
    'is_check': instance.isCheck,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lang_id', instance.langId?.toJson());
  writeNotNull('track_id', instance.trackId?.toJson());
  writeNotNull('genre_1', instance.genre1?.toJson());
  writeNotNull('genre_2', instance.genre2?.toJson());
  writeNotNull('user_id', instance.user?.toJson());
  return val;
}

_$_TrackIdRes _$$_TrackIdResFromJson(Map json) => $checkedCreate(
      r'_$_TrackIdRes',
      json,
      ($checkedConvert) {
        final val = _$_TrackIdRes(
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
          langYyric: $checkedConvert('lang_lyric', (v) => v as int? ?? 0),
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
              'lang',
              (v) => v == null
                  ? null
                  : LanguageRes.fromJson(Map<String, dynamic>.from(v as Map))),
          genre1: $checkedConvert(
              'genre1',
              (v) => v == null
                  ? null
                  : GenreRes.fromJson(Map<String, dynamic>.from(v as Map))),
          genre2: $checkedConvert(
              'genre2',
              (v) => v == null
                  ? null
                  : GenreRes.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'artisName': 'artis_name',
        'artisNameAnotherId': 'artis_name_another_id',
        'trackTitle': 'track_title',
        'trackVersion': 'track_version',
        'trackTitleAnotherId': 'track_title_another_id',
        'langYyric': 'lang_lyric',
        'createdAt': 'created_at',
        'otherArtisId': 'other_artis_id',
        'explisitLyric': 'explisit_lyric',
        'thisTrackIs': 'this_track_is',
        'pCopyright': 'p_copyright',
        'previewsStartTime': 'previews_start_time',
        'labelName': 'label_name',
        'internalTrackId': 'internal_track_id',
        'contributorId': 'contributor_id'
      },
    );

Map<String, dynamic> _$$_TrackIdResToJson(_$_TrackIdRes instance) {
  final val = <String, dynamic>{
    'artis_name': instance.artisName,
    'artis_name_another_id': instance.artisNameAnotherId,
    'image': instance.image,
    'cover': instance.cover,
    'track_title': instance.trackTitle,
    'track_version': instance.trackVersion,
    'track_title_another_id': instance.trackTitleAnotherId,
    'isrc': instance.isrc,
    'lang_lyric': instance.langYyric,
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
  writeNotNull('lang', instance.lang?.toJson());
  writeNotNull('genre1', instance.genre1?.toJson());
  writeNotNull('genre2', instance.genre2?.toJson());
  return val;
}
