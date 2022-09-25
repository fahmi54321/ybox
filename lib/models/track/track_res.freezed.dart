// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'track_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrackRes _$TrackResFromJson(Map<String, dynamic> json) {
  return _TrackRes.fromJson(json);
}

/// @nodoc
class _$TrackResTearOff {
  const _$TrackResTearOff();

  _TrackRes call(
      {@JsonKey(name: 'data', defaultValue: [])
          required List<DataTrackRes> data,
      @JsonKey(name: 'pagination')
          required PaginationRes pagination}) {
    return _TrackRes(
      data: data,
      pagination: pagination,
    );
  }

  TrackRes fromJson(Map<String, Object?> json) {
    return TrackRes.fromJson(json);
  }
}

/// @nodoc
const $TrackRes = _$TrackResTearOff();

/// @nodoc
mixin _$TrackRes {
  @JsonKey(name: 'data', defaultValue: [])
  List<DataTrackRes> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'pagination')
  PaginationRes get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackResCopyWith<TrackRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackResCopyWith<$Res> {
  factory $TrackResCopyWith(TrackRes value, $Res Function(TrackRes) then) =
      _$TrackResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<DataTrackRes> data,
      @JsonKey(name: 'pagination') PaginationRes pagination});

  $PaginationResCopyWith<$Res> get pagination;
}

/// @nodoc
class _$TrackResCopyWithImpl<$Res> implements $TrackResCopyWith<$Res> {
  _$TrackResCopyWithImpl(this._value, this._then);

  final TrackRes _value;
  // ignore: unused_field
  final $Res Function(TrackRes) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTrackRes>,
      pagination: pagination == freezed
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationRes,
    ));
  }

  @override
  $PaginationResCopyWith<$Res> get pagination {
    return $PaginationResCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value));
    });
  }
}

/// @nodoc
abstract class _$TrackResCopyWith<$Res> implements $TrackResCopyWith<$Res> {
  factory _$TrackResCopyWith(_TrackRes value, $Res Function(_TrackRes) then) =
      __$TrackResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<DataTrackRes> data,
      @JsonKey(name: 'pagination') PaginationRes pagination});

  @override
  $PaginationResCopyWith<$Res> get pagination;
}

/// @nodoc
class __$TrackResCopyWithImpl<$Res> extends _$TrackResCopyWithImpl<$Res>
    implements _$TrackResCopyWith<$Res> {
  __$TrackResCopyWithImpl(_TrackRes _value, $Res Function(_TrackRes) _then)
      : super(_value, (v) => _then(v as _TrackRes));

  @override
  _TrackRes get _value => super._value as _TrackRes;

  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_TrackRes(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTrackRes>,
      pagination: pagination == freezed
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationRes,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_TrackRes extends _TrackRes {
  const _$_TrackRes(
      {@JsonKey(name: 'data', defaultValue: []) required this.data,
      @JsonKey(name: 'pagination') required this.pagination})
      : super._();

  factory _$_TrackRes.fromJson(Map<String, dynamic> json) =>
      _$$_TrackResFromJson(json);

  @override
  @JsonKey(name: 'data', defaultValue: [])
  final List<DataTrackRes> data;
  @override
  @JsonKey(name: 'pagination')
  final PaginationRes pagination;

  @override
  String toString() {
    return 'TrackRes(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrackRes &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality()
                .equals(other.pagination, pagination));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(pagination));

  @JsonKey(ignore: true)
  @override
  _$TrackResCopyWith<_TrackRes> get copyWith =>
      __$TrackResCopyWithImpl<_TrackRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackResToJson(this);
  }
}

abstract class _TrackRes extends TrackRes {
  const factory _TrackRes(
      {@JsonKey(name: 'data', defaultValue: [])
          required List<DataTrackRes> data,
      @JsonKey(name: 'pagination')
          required PaginationRes pagination}) = _$_TrackRes;
  const _TrackRes._() : super._();

  factory _TrackRes.fromJson(Map<String, dynamic> json) = _$_TrackRes.fromJson;

  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<DataTrackRes> get data;
  @override
  @JsonKey(name: 'pagination')
  PaginationRes get pagination;
  @override
  @JsonKey(ignore: true)
  _$TrackResCopyWith<_TrackRes> get copyWith =>
      throw _privateConstructorUsedError;
}

DataTrackRes _$DataTrackResFromJson(Map<String, dynamic> json) {
  return _DataTrackRes.fromJson(json);
}

/// @nodoc
class _$DataTrackResTearOff {
  const _$DataTrackResTearOff();

  _DataTrackRes call(
      {@JsonKey(name: 'id', defaultValue: 0)
          required int id,
      @JsonKey(name: 'is_check', defaultValue: 0)
          required int isCheck,
      @JsonKey(name: 'artis_name', defaultValue: '')
          required String artisName,
      @JsonKey(name: 'artis_name_another_id', defaultValue: 0)
          required int artisNameAnotherId,
      @JsonKey(name: 'image', defaultValue: '')
          required String image,
      @JsonKey(name: 'cover', defaultValue: '')
          required String cover,
      @JsonKey(name: 'track_title', defaultValue: '')
          required String trackTitle,
      @JsonKey(name: 'track_version', defaultValue: '')
          required String trackVersion,
      @JsonKey(name: 'track_title_another_id', defaultValue: 0)
          required int trackTitleAnotherId,
      @JsonKey(name: 'isrc', defaultValue: 0)
          required int isrc,
      @JsonKey(name: 'created_at', defaultValue: '')
          required String createdAt,
      @JsonKey(name: 'spotify', defaultValue: '')
          required String spotify,
      @JsonKey(name: 'itunes', defaultValue: '')
          required String itunes,
      @JsonKey(name: 'other_artis_id', defaultValue: 0)
          required int otherArtisId,
      @JsonKey(name: 'explisit_lyric', defaultValue: 0)
          required int explisitLyric,
      @JsonKey(name: 'this_track_is', defaultValue: 0)
          required int thisTrackIs,
      @JsonKey(name: 'p_copyright', defaultValue: '')
          required String pCopyright,
      @JsonKey(name: 'previews_start_time', defaultValue: 0)
          required int previewsStartTime,
      @JsonKey(name: 'label_name')
          LabelRes? labelName,
      @JsonKey(name: 'internal_track_id', defaultValue: 0)
          required int internalTrackId,
      @JsonKey(name: 'lyric', defaultValue: '')
          required String lyric,
      @JsonKey(name: 'contributor_id', defaultValue: '')
          required String contributorId,
      @JsonKey(name: 'contributor')
          ConstributorRes? contributor,
      @JsonKey(name: 'lang_lyric')
          LanguageRes? lang,
      @JsonKey(name: 'genre_1')
          GenreRes? genre1,
      @JsonKey(name: 'genre_2')
          GenreRes? genre2,
      @JsonKey(name: 'user')
          UserRes? user}) {
    return _DataTrackRes(
      id: id,
      isCheck: isCheck,
      artisName: artisName,
      artisNameAnotherId: artisNameAnotherId,
      image: image,
      cover: cover,
      trackTitle: trackTitle,
      trackVersion: trackVersion,
      trackTitleAnotherId: trackTitleAnotherId,
      isrc: isrc,
      createdAt: createdAt,
      spotify: spotify,
      itunes: itunes,
      otherArtisId: otherArtisId,
      explisitLyric: explisitLyric,
      thisTrackIs: thisTrackIs,
      pCopyright: pCopyright,
      previewsStartTime: previewsStartTime,
      labelName: labelName,
      internalTrackId: internalTrackId,
      lyric: lyric,
      contributorId: contributorId,
      contributor: contributor,
      lang: lang,
      genre1: genre1,
      genre2: genre2,
      user: user,
    );
  }

  DataTrackRes fromJson(Map<String, Object?> json) {
    return DataTrackRes.fromJson(json);
  }
}

/// @nodoc
const $DataTrackRes = _$DataTrackResTearOff();

/// @nodoc
mixin _$DataTrackRes {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_check', defaultValue: 0)
  int get isCheck => throw _privateConstructorUsedError;
  @JsonKey(name: 'artis_name', defaultValue: '')
  String get artisName => throw _privateConstructorUsedError;
  @JsonKey(name: 'artis_name_another_id', defaultValue: 0)
  int get artisNameAnotherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image', defaultValue: '')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover', defaultValue: '')
  String get cover => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_title', defaultValue: '')
  String get trackTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_version', defaultValue: '')
  String get trackVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_title_another_id', defaultValue: 0)
  int get trackTitleAnotherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'isrc', defaultValue: 0)
  int get isrc => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', defaultValue: '')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'spotify', defaultValue: '')
  String get spotify => throw _privateConstructorUsedError;
  @JsonKey(name: 'itunes', defaultValue: '')
  String get itunes => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_artis_id', defaultValue: 0)
  int get otherArtisId => throw _privateConstructorUsedError;
  @JsonKey(name: 'explisit_lyric', defaultValue: 0)
  int get explisitLyric => throw _privateConstructorUsedError;
  @JsonKey(name: 'this_track_is', defaultValue: 0)
  int get thisTrackIs => throw _privateConstructorUsedError;
  @JsonKey(name: 'p_copyright', defaultValue: '')
  String get pCopyright => throw _privateConstructorUsedError;
  @JsonKey(name: 'previews_start_time', defaultValue: 0)
  int get previewsStartTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'label_name')
  LabelRes? get labelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'internal_track_id', defaultValue: 0)
  int get internalTrackId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lyric', defaultValue: '')
  String get lyric => throw _privateConstructorUsedError;
  @JsonKey(name: 'contributor_id', defaultValue: '')
  String get contributorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'contributor')
  ConstributorRes? get contributor => throw _privateConstructorUsedError;
  @JsonKey(name: 'lang_lyric')
  LanguageRes? get lang => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_1')
  GenreRes? get genre1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_2')
  GenreRes? get genre2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserRes? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataTrackResCopyWith<DataTrackRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTrackResCopyWith<$Res> {
  factory $DataTrackResCopyWith(
          DataTrackRes value, $Res Function(DataTrackRes) then) =
      _$DataTrackResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0)
          int id,
      @JsonKey(name: 'is_check', defaultValue: 0)
          int isCheck,
      @JsonKey(name: 'artis_name', defaultValue: '')
          String artisName,
      @JsonKey(name: 'artis_name_another_id', defaultValue: 0)
          int artisNameAnotherId,
      @JsonKey(name: 'image', defaultValue: '')
          String image,
      @JsonKey(name: 'cover', defaultValue: '')
          String cover,
      @JsonKey(name: 'track_title', defaultValue: '')
          String trackTitle,
      @JsonKey(name: 'track_version', defaultValue: '')
          String trackVersion,
      @JsonKey(name: 'track_title_another_id', defaultValue: 0)
          int trackTitleAnotherId,
      @JsonKey(name: 'isrc', defaultValue: 0)
          int isrc,
      @JsonKey(name: 'created_at', defaultValue: '')
          String createdAt,
      @JsonKey(name: 'spotify', defaultValue: '')
          String spotify,
      @JsonKey(name: 'itunes', defaultValue: '')
          String itunes,
      @JsonKey(name: 'other_artis_id', defaultValue: 0)
          int otherArtisId,
      @JsonKey(name: 'explisit_lyric', defaultValue: 0)
          int explisitLyric,
      @JsonKey(name: 'this_track_is', defaultValue: 0)
          int thisTrackIs,
      @JsonKey(name: 'p_copyright', defaultValue: '')
          String pCopyright,
      @JsonKey(name: 'previews_start_time', defaultValue: 0)
          int previewsStartTime,
      @JsonKey(name: 'label_name')
          LabelRes? labelName,
      @JsonKey(name: 'internal_track_id', defaultValue: 0)
          int internalTrackId,
      @JsonKey(name: 'lyric', defaultValue: '')
          String lyric,
      @JsonKey(name: 'contributor_id', defaultValue: '')
          String contributorId,
      @JsonKey(name: 'contributor')
          ConstributorRes? contributor,
      @JsonKey(name: 'lang_lyric')
          LanguageRes? lang,
      @JsonKey(name: 'genre_1')
          GenreRes? genre1,
      @JsonKey(name: 'genre_2')
          GenreRes? genre2,
      @JsonKey(name: 'user')
          UserRes? user});

  $LabelResCopyWith<$Res>? get labelName;
  $ConstributorResCopyWith<$Res>? get contributor;
  $LanguageResCopyWith<$Res>? get lang;
  $GenreResCopyWith<$Res>? get genre1;
  $GenreResCopyWith<$Res>? get genre2;
  $UserResCopyWith<$Res>? get user;
}

/// @nodoc
class _$DataTrackResCopyWithImpl<$Res> implements $DataTrackResCopyWith<$Res> {
  _$DataTrackResCopyWithImpl(this._value, this._then);

  final DataTrackRes _value;
  // ignore: unused_field
  final $Res Function(DataTrackRes) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isCheck = freezed,
    Object? artisName = freezed,
    Object? artisNameAnotherId = freezed,
    Object? image = freezed,
    Object? cover = freezed,
    Object? trackTitle = freezed,
    Object? trackVersion = freezed,
    Object? trackTitleAnotherId = freezed,
    Object? isrc = freezed,
    Object? createdAt = freezed,
    Object? spotify = freezed,
    Object? itunes = freezed,
    Object? otherArtisId = freezed,
    Object? explisitLyric = freezed,
    Object? thisTrackIs = freezed,
    Object? pCopyright = freezed,
    Object? previewsStartTime = freezed,
    Object? labelName = freezed,
    Object? internalTrackId = freezed,
    Object? lyric = freezed,
    Object? contributorId = freezed,
    Object? contributor = freezed,
    Object? lang = freezed,
    Object? genre1 = freezed,
    Object? genre2 = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isCheck: isCheck == freezed
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as int,
      artisName: artisName == freezed
          ? _value.artisName
          : artisName // ignore: cast_nullable_to_non_nullable
              as String,
      artisNameAnotherId: artisNameAnotherId == freezed
          ? _value.artisNameAnotherId
          : artisNameAnotherId // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      trackTitle: trackTitle == freezed
          ? _value.trackTitle
          : trackTitle // ignore: cast_nullable_to_non_nullable
              as String,
      trackVersion: trackVersion == freezed
          ? _value.trackVersion
          : trackVersion // ignore: cast_nullable_to_non_nullable
              as String,
      trackTitleAnotherId: trackTitleAnotherId == freezed
          ? _value.trackTitleAnotherId
          : trackTitleAnotherId // ignore: cast_nullable_to_non_nullable
              as int,
      isrc: isrc == freezed
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      spotify: spotify == freezed
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
      itunes: itunes == freezed
          ? _value.itunes
          : itunes // ignore: cast_nullable_to_non_nullable
              as String,
      otherArtisId: otherArtisId == freezed
          ? _value.otherArtisId
          : otherArtisId // ignore: cast_nullable_to_non_nullable
              as int,
      explisitLyric: explisitLyric == freezed
          ? _value.explisitLyric
          : explisitLyric // ignore: cast_nullable_to_non_nullable
              as int,
      thisTrackIs: thisTrackIs == freezed
          ? _value.thisTrackIs
          : thisTrackIs // ignore: cast_nullable_to_non_nullable
              as int,
      pCopyright: pCopyright == freezed
          ? _value.pCopyright
          : pCopyright // ignore: cast_nullable_to_non_nullable
              as String,
      previewsStartTime: previewsStartTime == freezed
          ? _value.previewsStartTime
          : previewsStartTime // ignore: cast_nullable_to_non_nullable
              as int,
      labelName: labelName == freezed
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as LabelRes?,
      internalTrackId: internalTrackId == freezed
          ? _value.internalTrackId
          : internalTrackId // ignore: cast_nullable_to_non_nullable
              as int,
      lyric: lyric == freezed
          ? _value.lyric
          : lyric // ignore: cast_nullable_to_non_nullable
              as String,
      contributorId: contributorId == freezed
          ? _value.contributorId
          : contributorId // ignore: cast_nullable_to_non_nullable
              as String,
      contributor: contributor == freezed
          ? _value.contributor
          : contributor // ignore: cast_nullable_to_non_nullable
              as ConstributorRes?,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as LanguageRes?,
      genre1: genre1 == freezed
          ? _value.genre1
          : genre1 // ignore: cast_nullable_to_non_nullable
              as GenreRes?,
      genre2: genre2 == freezed
          ? _value.genre2
          : genre2 // ignore: cast_nullable_to_non_nullable
              as GenreRes?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRes?,
    ));
  }

  @override
  $LabelResCopyWith<$Res>? get labelName {
    if (_value.labelName == null) {
      return null;
    }

    return $LabelResCopyWith<$Res>(_value.labelName!, (value) {
      return _then(_value.copyWith(labelName: value));
    });
  }

  @override
  $ConstributorResCopyWith<$Res>? get contributor {
    if (_value.contributor == null) {
      return null;
    }

    return $ConstributorResCopyWith<$Res>(_value.contributor!, (value) {
      return _then(_value.copyWith(contributor: value));
    });
  }

  @override
  $LanguageResCopyWith<$Res>? get lang {
    if (_value.lang == null) {
      return null;
    }

    return $LanguageResCopyWith<$Res>(_value.lang!, (value) {
      return _then(_value.copyWith(lang: value));
    });
  }

  @override
  $GenreResCopyWith<$Res>? get genre1 {
    if (_value.genre1 == null) {
      return null;
    }

    return $GenreResCopyWith<$Res>(_value.genre1!, (value) {
      return _then(_value.copyWith(genre1: value));
    });
  }

  @override
  $GenreResCopyWith<$Res>? get genre2 {
    if (_value.genre2 == null) {
      return null;
    }

    return $GenreResCopyWith<$Res>(_value.genre2!, (value) {
      return _then(_value.copyWith(genre2: value));
    });
  }

  @override
  $UserResCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserResCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$DataTrackResCopyWith<$Res>
    implements $DataTrackResCopyWith<$Res> {
  factory _$DataTrackResCopyWith(
          _DataTrackRes value, $Res Function(_DataTrackRes) then) =
      __$DataTrackResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0)
          int id,
      @JsonKey(name: 'is_check', defaultValue: 0)
          int isCheck,
      @JsonKey(name: 'artis_name', defaultValue: '')
          String artisName,
      @JsonKey(name: 'artis_name_another_id', defaultValue: 0)
          int artisNameAnotherId,
      @JsonKey(name: 'image', defaultValue: '')
          String image,
      @JsonKey(name: 'cover', defaultValue: '')
          String cover,
      @JsonKey(name: 'track_title', defaultValue: '')
          String trackTitle,
      @JsonKey(name: 'track_version', defaultValue: '')
          String trackVersion,
      @JsonKey(name: 'track_title_another_id', defaultValue: 0)
          int trackTitleAnotherId,
      @JsonKey(name: 'isrc', defaultValue: 0)
          int isrc,
      @JsonKey(name: 'created_at', defaultValue: '')
          String createdAt,
      @JsonKey(name: 'spotify', defaultValue: '')
          String spotify,
      @JsonKey(name: 'itunes', defaultValue: '')
          String itunes,
      @JsonKey(name: 'other_artis_id', defaultValue: 0)
          int otherArtisId,
      @JsonKey(name: 'explisit_lyric', defaultValue: 0)
          int explisitLyric,
      @JsonKey(name: 'this_track_is', defaultValue: 0)
          int thisTrackIs,
      @JsonKey(name: 'p_copyright', defaultValue: '')
          String pCopyright,
      @JsonKey(name: 'previews_start_time', defaultValue: 0)
          int previewsStartTime,
      @JsonKey(name: 'label_name')
          LabelRes? labelName,
      @JsonKey(name: 'internal_track_id', defaultValue: 0)
          int internalTrackId,
      @JsonKey(name: 'lyric', defaultValue: '')
          String lyric,
      @JsonKey(name: 'contributor_id', defaultValue: '')
          String contributorId,
      @JsonKey(name: 'contributor')
          ConstributorRes? contributor,
      @JsonKey(name: 'lang_lyric')
          LanguageRes? lang,
      @JsonKey(name: 'genre_1')
          GenreRes? genre1,
      @JsonKey(name: 'genre_2')
          GenreRes? genre2,
      @JsonKey(name: 'user')
          UserRes? user});

  @override
  $LabelResCopyWith<$Res>? get labelName;
  @override
  $ConstributorResCopyWith<$Res>? get contributor;
  @override
  $LanguageResCopyWith<$Res>? get lang;
  @override
  $GenreResCopyWith<$Res>? get genre1;
  @override
  $GenreResCopyWith<$Res>? get genre2;
  @override
  $UserResCopyWith<$Res>? get user;
}

/// @nodoc
class __$DataTrackResCopyWithImpl<$Res> extends _$DataTrackResCopyWithImpl<$Res>
    implements _$DataTrackResCopyWith<$Res> {
  __$DataTrackResCopyWithImpl(
      _DataTrackRes _value, $Res Function(_DataTrackRes) _then)
      : super(_value, (v) => _then(v as _DataTrackRes));

  @override
  _DataTrackRes get _value => super._value as _DataTrackRes;

  @override
  $Res call({
    Object? id = freezed,
    Object? isCheck = freezed,
    Object? artisName = freezed,
    Object? artisNameAnotherId = freezed,
    Object? image = freezed,
    Object? cover = freezed,
    Object? trackTitle = freezed,
    Object? trackVersion = freezed,
    Object? trackTitleAnotherId = freezed,
    Object? isrc = freezed,
    Object? createdAt = freezed,
    Object? spotify = freezed,
    Object? itunes = freezed,
    Object? otherArtisId = freezed,
    Object? explisitLyric = freezed,
    Object? thisTrackIs = freezed,
    Object? pCopyright = freezed,
    Object? previewsStartTime = freezed,
    Object? labelName = freezed,
    Object? internalTrackId = freezed,
    Object? lyric = freezed,
    Object? contributorId = freezed,
    Object? contributor = freezed,
    Object? lang = freezed,
    Object? genre1 = freezed,
    Object? genre2 = freezed,
    Object? user = freezed,
  }) {
    return _then(_DataTrackRes(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isCheck: isCheck == freezed
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as int,
      artisName: artisName == freezed
          ? _value.artisName
          : artisName // ignore: cast_nullable_to_non_nullable
              as String,
      artisNameAnotherId: artisNameAnotherId == freezed
          ? _value.artisNameAnotherId
          : artisNameAnotherId // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      trackTitle: trackTitle == freezed
          ? _value.trackTitle
          : trackTitle // ignore: cast_nullable_to_non_nullable
              as String,
      trackVersion: trackVersion == freezed
          ? _value.trackVersion
          : trackVersion // ignore: cast_nullable_to_non_nullable
              as String,
      trackTitleAnotherId: trackTitleAnotherId == freezed
          ? _value.trackTitleAnotherId
          : trackTitleAnotherId // ignore: cast_nullable_to_non_nullable
              as int,
      isrc: isrc == freezed
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      spotify: spotify == freezed
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
      itunes: itunes == freezed
          ? _value.itunes
          : itunes // ignore: cast_nullable_to_non_nullable
              as String,
      otherArtisId: otherArtisId == freezed
          ? _value.otherArtisId
          : otherArtisId // ignore: cast_nullable_to_non_nullable
              as int,
      explisitLyric: explisitLyric == freezed
          ? _value.explisitLyric
          : explisitLyric // ignore: cast_nullable_to_non_nullable
              as int,
      thisTrackIs: thisTrackIs == freezed
          ? _value.thisTrackIs
          : thisTrackIs // ignore: cast_nullable_to_non_nullable
              as int,
      pCopyright: pCopyright == freezed
          ? _value.pCopyright
          : pCopyright // ignore: cast_nullable_to_non_nullable
              as String,
      previewsStartTime: previewsStartTime == freezed
          ? _value.previewsStartTime
          : previewsStartTime // ignore: cast_nullable_to_non_nullable
              as int,
      labelName: labelName == freezed
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as LabelRes?,
      internalTrackId: internalTrackId == freezed
          ? _value.internalTrackId
          : internalTrackId // ignore: cast_nullable_to_non_nullable
              as int,
      lyric: lyric == freezed
          ? _value.lyric
          : lyric // ignore: cast_nullable_to_non_nullable
              as String,
      contributorId: contributorId == freezed
          ? _value.contributorId
          : contributorId // ignore: cast_nullable_to_non_nullable
              as String,
      contributor: contributor == freezed
          ? _value.contributor
          : contributor // ignore: cast_nullable_to_non_nullable
              as ConstributorRes?,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as LanguageRes?,
      genre1: genre1 == freezed
          ? _value.genre1
          : genre1 // ignore: cast_nullable_to_non_nullable
              as GenreRes?,
      genre2: genre2 == freezed
          ? _value.genre2
          : genre2 // ignore: cast_nullable_to_non_nullable
              as GenreRes?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRes?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_DataTrackRes extends _DataTrackRes {
  const _$_DataTrackRes(
      {@JsonKey(name: 'id', defaultValue: 0)
          required this.id,
      @JsonKey(name: 'is_check', defaultValue: 0)
          required this.isCheck,
      @JsonKey(name: 'artis_name', defaultValue: '')
          required this.artisName,
      @JsonKey(name: 'artis_name_another_id', defaultValue: 0)
          required this.artisNameAnotherId,
      @JsonKey(name: 'image', defaultValue: '')
          required this.image,
      @JsonKey(name: 'cover', defaultValue: '')
          required this.cover,
      @JsonKey(name: 'track_title', defaultValue: '')
          required this.trackTitle,
      @JsonKey(name: 'track_version', defaultValue: '')
          required this.trackVersion,
      @JsonKey(name: 'track_title_another_id', defaultValue: 0)
          required this.trackTitleAnotherId,
      @JsonKey(name: 'isrc', defaultValue: 0)
          required this.isrc,
      @JsonKey(name: 'created_at', defaultValue: '')
          required this.createdAt,
      @JsonKey(name: 'spotify', defaultValue: '')
          required this.spotify,
      @JsonKey(name: 'itunes', defaultValue: '')
          required this.itunes,
      @JsonKey(name: 'other_artis_id', defaultValue: 0)
          required this.otherArtisId,
      @JsonKey(name: 'explisit_lyric', defaultValue: 0)
          required this.explisitLyric,
      @JsonKey(name: 'this_track_is', defaultValue: 0)
          required this.thisTrackIs,
      @JsonKey(name: 'p_copyright', defaultValue: '')
          required this.pCopyright,
      @JsonKey(name: 'previews_start_time', defaultValue: 0)
          required this.previewsStartTime,
      @JsonKey(name: 'label_name')
          this.labelName,
      @JsonKey(name: 'internal_track_id', defaultValue: 0)
          required this.internalTrackId,
      @JsonKey(name: 'lyric', defaultValue: '')
          required this.lyric,
      @JsonKey(name: 'contributor_id', defaultValue: '')
          required this.contributorId,
      @JsonKey(name: 'contributor')
          this.contributor,
      @JsonKey(name: 'lang_lyric')
          this.lang,
      @JsonKey(name: 'genre_1')
          this.genre1,
      @JsonKey(name: 'genre_2')
          this.genre2,
      @JsonKey(name: 'user')
          this.user})
      : super._();

  factory _$_DataTrackRes.fromJson(Map<String, dynamic> json) =>
      _$$_DataTrackResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'is_check', defaultValue: 0)
  final int isCheck;
  @override
  @JsonKey(name: 'artis_name', defaultValue: '')
  final String artisName;
  @override
  @JsonKey(name: 'artis_name_another_id', defaultValue: 0)
  final int artisNameAnotherId;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @override
  @JsonKey(name: 'cover', defaultValue: '')
  final String cover;
  @override
  @JsonKey(name: 'track_title', defaultValue: '')
  final String trackTitle;
  @override
  @JsonKey(name: 'track_version', defaultValue: '')
  final String trackVersion;
  @override
  @JsonKey(name: 'track_title_another_id', defaultValue: 0)
  final int trackTitleAnotherId;
  @override
  @JsonKey(name: 'isrc', defaultValue: 0)
  final int isrc;
  @override
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;
  @override
  @JsonKey(name: 'spotify', defaultValue: '')
  final String spotify;
  @override
  @JsonKey(name: 'itunes', defaultValue: '')
  final String itunes;
  @override
  @JsonKey(name: 'other_artis_id', defaultValue: 0)
  final int otherArtisId;
  @override
  @JsonKey(name: 'explisit_lyric', defaultValue: 0)
  final int explisitLyric;
  @override
  @JsonKey(name: 'this_track_is', defaultValue: 0)
  final int thisTrackIs;
  @override
  @JsonKey(name: 'p_copyright', defaultValue: '')
  final String pCopyright;
  @override
  @JsonKey(name: 'previews_start_time', defaultValue: 0)
  final int previewsStartTime;
  @override
  @JsonKey(name: 'label_name')
  final LabelRes? labelName;
  @override
  @JsonKey(name: 'internal_track_id', defaultValue: 0)
  final int internalTrackId;
  @override
  @JsonKey(name: 'lyric', defaultValue: '')
  final String lyric;
  @override
  @JsonKey(name: 'contributor_id', defaultValue: '')
  final String contributorId;
  @override
  @JsonKey(name: 'contributor')
  final ConstributorRes? contributor;
  @override
  @JsonKey(name: 'lang_lyric')
  final LanguageRes? lang;
  @override
  @JsonKey(name: 'genre_1')
  final GenreRes? genre1;
  @override
  @JsonKey(name: 'genre_2')
  final GenreRes? genre2;
  @override
  @JsonKey(name: 'user')
  final UserRes? user;

  @override
  String toString() {
    return 'DataTrackRes(id: $id, isCheck: $isCheck, artisName: $artisName, artisNameAnotherId: $artisNameAnotherId, image: $image, cover: $cover, trackTitle: $trackTitle, trackVersion: $trackVersion, trackTitleAnotherId: $trackTitleAnotherId, isrc: $isrc, createdAt: $createdAt, spotify: $spotify, itunes: $itunes, otherArtisId: $otherArtisId, explisitLyric: $explisitLyric, thisTrackIs: $thisTrackIs, pCopyright: $pCopyright, previewsStartTime: $previewsStartTime, labelName: $labelName, internalTrackId: $internalTrackId, lyric: $lyric, contributorId: $contributorId, contributor: $contributor, lang: $lang, genre1: $genre1, genre2: $genre2, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataTrackRes &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.isCheck, isCheck) &&
            const DeepCollectionEquality().equals(other.artisName, artisName) &&
            const DeepCollectionEquality()
                .equals(other.artisNameAnotherId, artisNameAnotherId) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.cover, cover) &&
            const DeepCollectionEquality()
                .equals(other.trackTitle, trackTitle) &&
            const DeepCollectionEquality()
                .equals(other.trackVersion, trackVersion) &&
            const DeepCollectionEquality()
                .equals(other.trackTitleAnotherId, trackTitleAnotherId) &&
            const DeepCollectionEquality().equals(other.isrc, isrc) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.spotify, spotify) &&
            const DeepCollectionEquality().equals(other.itunes, itunes) &&
            const DeepCollectionEquality()
                .equals(other.otherArtisId, otherArtisId) &&
            const DeepCollectionEquality()
                .equals(other.explisitLyric, explisitLyric) &&
            const DeepCollectionEquality()
                .equals(other.thisTrackIs, thisTrackIs) &&
            const DeepCollectionEquality()
                .equals(other.pCopyright, pCopyright) &&
            const DeepCollectionEquality()
                .equals(other.previewsStartTime, previewsStartTime) &&
            const DeepCollectionEquality().equals(other.labelName, labelName) &&
            const DeepCollectionEquality()
                .equals(other.internalTrackId, internalTrackId) &&
            const DeepCollectionEquality().equals(other.lyric, lyric) &&
            const DeepCollectionEquality()
                .equals(other.contributorId, contributorId) &&
            const DeepCollectionEquality()
                .equals(other.contributor, contributor) &&
            const DeepCollectionEquality().equals(other.lang, lang) &&
            const DeepCollectionEquality().equals(other.genre1, genre1) &&
            const DeepCollectionEquality().equals(other.genre2, genre2) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(isCheck),
        const DeepCollectionEquality().hash(artisName),
        const DeepCollectionEquality().hash(artisNameAnotherId),
        const DeepCollectionEquality().hash(image),
        const DeepCollectionEquality().hash(cover),
        const DeepCollectionEquality().hash(trackTitle),
        const DeepCollectionEquality().hash(trackVersion),
        const DeepCollectionEquality().hash(trackTitleAnotherId),
        const DeepCollectionEquality().hash(isrc),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(spotify),
        const DeepCollectionEquality().hash(itunes),
        const DeepCollectionEquality().hash(otherArtisId),
        const DeepCollectionEquality().hash(explisitLyric),
        const DeepCollectionEquality().hash(thisTrackIs),
        const DeepCollectionEquality().hash(pCopyright),
        const DeepCollectionEquality().hash(previewsStartTime),
        const DeepCollectionEquality().hash(labelName),
        const DeepCollectionEquality().hash(internalTrackId),
        const DeepCollectionEquality().hash(lyric),
        const DeepCollectionEquality().hash(contributorId),
        const DeepCollectionEquality().hash(contributor),
        const DeepCollectionEquality().hash(lang),
        const DeepCollectionEquality().hash(genre1),
        const DeepCollectionEquality().hash(genre2),
        const DeepCollectionEquality().hash(user)
      ]);

  @JsonKey(ignore: true)
  @override
  _$DataTrackResCopyWith<_DataTrackRes> get copyWith =>
      __$DataTrackResCopyWithImpl<_DataTrackRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataTrackResToJson(this);
  }
}

abstract class _DataTrackRes extends DataTrackRes {
  const factory _DataTrackRes(
      {@JsonKey(name: 'id', defaultValue: 0)
          required int id,
      @JsonKey(name: 'is_check', defaultValue: 0)
          required int isCheck,
      @JsonKey(name: 'artis_name', defaultValue: '')
          required String artisName,
      @JsonKey(name: 'artis_name_another_id', defaultValue: 0)
          required int artisNameAnotherId,
      @JsonKey(name: 'image', defaultValue: '')
          required String image,
      @JsonKey(name: 'cover', defaultValue: '')
          required String cover,
      @JsonKey(name: 'track_title', defaultValue: '')
          required String trackTitle,
      @JsonKey(name: 'track_version', defaultValue: '')
          required String trackVersion,
      @JsonKey(name: 'track_title_another_id', defaultValue: 0)
          required int trackTitleAnotherId,
      @JsonKey(name: 'isrc', defaultValue: 0)
          required int isrc,
      @JsonKey(name: 'created_at', defaultValue: '')
          required String createdAt,
      @JsonKey(name: 'spotify', defaultValue: '')
          required String spotify,
      @JsonKey(name: 'itunes', defaultValue: '')
          required String itunes,
      @JsonKey(name: 'other_artis_id', defaultValue: 0)
          required int otherArtisId,
      @JsonKey(name: 'explisit_lyric', defaultValue: 0)
          required int explisitLyric,
      @JsonKey(name: 'this_track_is', defaultValue: 0)
          required int thisTrackIs,
      @JsonKey(name: 'p_copyright', defaultValue: '')
          required String pCopyright,
      @JsonKey(name: 'previews_start_time', defaultValue: 0)
          required int previewsStartTime,
      @JsonKey(name: 'label_name')
          LabelRes? labelName,
      @JsonKey(name: 'internal_track_id', defaultValue: 0)
          required int internalTrackId,
      @JsonKey(name: 'lyric', defaultValue: '')
          required String lyric,
      @JsonKey(name: 'contributor_id', defaultValue: '')
          required String contributorId,
      @JsonKey(name: 'contributor')
          ConstributorRes? contributor,
      @JsonKey(name: 'lang_lyric')
          LanguageRes? lang,
      @JsonKey(name: 'genre_1')
          GenreRes? genre1,
      @JsonKey(name: 'genre_2')
          GenreRes? genre2,
      @JsonKey(name: 'user')
          UserRes? user}) = _$_DataTrackRes;
  const _DataTrackRes._() : super._();

  factory _DataTrackRes.fromJson(Map<String, dynamic> json) =
      _$_DataTrackRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'is_check', defaultValue: 0)
  int get isCheck;
  @override
  @JsonKey(name: 'artis_name', defaultValue: '')
  String get artisName;
  @override
  @JsonKey(name: 'artis_name_another_id', defaultValue: 0)
  int get artisNameAnotherId;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  String get image;
  @override
  @JsonKey(name: 'cover', defaultValue: '')
  String get cover;
  @override
  @JsonKey(name: 'track_title', defaultValue: '')
  String get trackTitle;
  @override
  @JsonKey(name: 'track_version', defaultValue: '')
  String get trackVersion;
  @override
  @JsonKey(name: 'track_title_another_id', defaultValue: 0)
  int get trackTitleAnotherId;
  @override
  @JsonKey(name: 'isrc', defaultValue: 0)
  int get isrc;
  @override
  @JsonKey(name: 'created_at', defaultValue: '')
  String get createdAt;
  @override
  @JsonKey(name: 'spotify', defaultValue: '')
  String get spotify;
  @override
  @JsonKey(name: 'itunes', defaultValue: '')
  String get itunes;
  @override
  @JsonKey(name: 'other_artis_id', defaultValue: 0)
  int get otherArtisId;
  @override
  @JsonKey(name: 'explisit_lyric', defaultValue: 0)
  int get explisitLyric;
  @override
  @JsonKey(name: 'this_track_is', defaultValue: 0)
  int get thisTrackIs;
  @override
  @JsonKey(name: 'p_copyright', defaultValue: '')
  String get pCopyright;
  @override
  @JsonKey(name: 'previews_start_time', defaultValue: 0)
  int get previewsStartTime;
  @override
  @JsonKey(name: 'label_name')
  LabelRes? get labelName;
  @override
  @JsonKey(name: 'internal_track_id', defaultValue: 0)
  int get internalTrackId;
  @override
  @JsonKey(name: 'lyric', defaultValue: '')
  String get lyric;
  @override
  @JsonKey(name: 'contributor_id', defaultValue: '')
  String get contributorId;
  @override
  @JsonKey(name: 'contributor')
  ConstributorRes? get contributor;
  @override
  @JsonKey(name: 'lang_lyric')
  LanguageRes? get lang;
  @override
  @JsonKey(name: 'genre_1')
  GenreRes? get genre1;
  @override
  @JsonKey(name: 'genre_2')
  GenreRes? get genre2;
  @override
  @JsonKey(name: 'user')
  UserRes? get user;
  @override
  @JsonKey(ignore: true)
  _$DataTrackResCopyWith<_DataTrackRes> get copyWith =>
      throw _privateConstructorUsedError;
}
