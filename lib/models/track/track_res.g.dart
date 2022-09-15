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
          cover: $checkedConvert('cover', (v) => v as String? ?? ''),
          trackTitle: $checkedConvert('track_title', (v) => v as String? ?? ''),
          artistName: $checkedConvert('artis_name', (v) => v as String? ?? ''),
          spotify: $checkedConvert('spotify', (v) => v as String? ?? ''),
          itunes: $checkedConvert('itunes', (v) => v as String? ?? ''),
          pCopyright: $checkedConvert('p_copyright', (v) => v as String? ?? ''),
          labelName: $checkedConvert('label_name', (v) => v as String? ?? ''),
          isCheck: $checkedConvert('is_check', (v) => v as int? ?? 0),
          isrc: $checkedConvert('isrc', (v) => v as int? ?? 0),
          image: $checkedConvert('image', (v) => v as String? ?? ''),
          langId: $checkedConvert(
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
        'trackTitle': 'track_title',
        'artistName': 'artis_name',
        'pCopyright': 'p_copyright',
        'labelName': 'label_name',
        'isCheck': 'is_check',
        'langId': 'lang_lyric',
        'genre1': 'genre_1',
        'genre2': 'genre_2'
      },
    );

Map<String, dynamic> _$$_DataTrackResToJson(_$_DataTrackRes instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'cover': instance.cover,
    'track_title': instance.trackTitle,
    'artis_name': instance.artistName,
    'spotify': instance.spotify,
    'itunes': instance.itunes,
    'p_copyright': instance.pCopyright,
    'label_name': instance.labelName,
    'is_check': instance.isCheck,
    'isrc': instance.isrc,
    'image': instance.image,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lang_lyric', instance.langId?.toJson());
  writeNotNull('genre_1', instance.genre1?.toJson());
  writeNotNull('genre_2', instance.genre2?.toJson());
  writeNotNull('user', instance.user?.toJson());
  return val;
}
