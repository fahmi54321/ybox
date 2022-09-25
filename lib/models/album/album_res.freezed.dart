// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'album_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlbumRes _$AlbumResFromJson(Map<String, dynamic> json) {
  return _AlbumRes.fromJson(json);
}

/// @nodoc
class _$AlbumResTearOff {
  const _$AlbumResTearOff();

  _AlbumRes call(
      {@JsonKey(name: 'data', defaultValue: [])
          required List<DataAlbumRes> data,
      @JsonKey(name: 'pagination')
          required PaginationRes pagination}) {
    return _AlbumRes(
      data: data,
      pagination: pagination,
    );
  }

  AlbumRes fromJson(Map<String, Object?> json) {
    return AlbumRes.fromJson(json);
  }
}

/// @nodoc
const $AlbumRes = _$AlbumResTearOff();

/// @nodoc
mixin _$AlbumRes {
  @JsonKey(name: 'data', defaultValue: [])
  List<DataAlbumRes> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'pagination')
  PaginationRes get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumResCopyWith<AlbumRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumResCopyWith<$Res> {
  factory $AlbumResCopyWith(AlbumRes value, $Res Function(AlbumRes) then) =
      _$AlbumResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<DataAlbumRes> data,
      @JsonKey(name: 'pagination') PaginationRes pagination});

  $PaginationResCopyWith<$Res> get pagination;
}

/// @nodoc
class _$AlbumResCopyWithImpl<$Res> implements $AlbumResCopyWith<$Res> {
  _$AlbumResCopyWithImpl(this._value, this._then);

  final AlbumRes _value;
  // ignore: unused_field
  final $Res Function(AlbumRes) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataAlbumRes>,
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
abstract class _$AlbumResCopyWith<$Res> implements $AlbumResCopyWith<$Res> {
  factory _$AlbumResCopyWith(_AlbumRes value, $Res Function(_AlbumRes) then) =
      __$AlbumResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<DataAlbumRes> data,
      @JsonKey(name: 'pagination') PaginationRes pagination});

  @override
  $PaginationResCopyWith<$Res> get pagination;
}

/// @nodoc
class __$AlbumResCopyWithImpl<$Res> extends _$AlbumResCopyWithImpl<$Res>
    implements _$AlbumResCopyWith<$Res> {
  __$AlbumResCopyWithImpl(_AlbumRes _value, $Res Function(_AlbumRes) _then)
      : super(_value, (v) => _then(v as _AlbumRes));

  @override
  _AlbumRes get _value => super._value as _AlbumRes;

  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_AlbumRes(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataAlbumRes>,
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
class _$_AlbumRes extends _AlbumRes {
  const _$_AlbumRes(
      {@JsonKey(name: 'data', defaultValue: []) required this.data,
      @JsonKey(name: 'pagination') required this.pagination})
      : super._();

  factory _$_AlbumRes.fromJson(Map<String, dynamic> json) =>
      _$$_AlbumResFromJson(json);

  @override
  @JsonKey(name: 'data', defaultValue: [])
  final List<DataAlbumRes> data;
  @override
  @JsonKey(name: 'pagination')
  final PaginationRes pagination;

  @override
  String toString() {
    return 'AlbumRes(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AlbumRes &&
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
  _$AlbumResCopyWith<_AlbumRes> get copyWith =>
      __$AlbumResCopyWithImpl<_AlbumRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlbumResToJson(this);
  }
}

abstract class _AlbumRes extends AlbumRes {
  const factory _AlbumRes(
      {@JsonKey(name: 'data', defaultValue: [])
          required List<DataAlbumRes> data,
      @JsonKey(name: 'pagination')
          required PaginationRes pagination}) = _$_AlbumRes;
  const _AlbumRes._() : super._();

  factory _AlbumRes.fromJson(Map<String, dynamic> json) = _$_AlbumRes.fromJson;

  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<DataAlbumRes> get data;
  @override
  @JsonKey(name: 'pagination')
  PaginationRes get pagination;
  @override
  @JsonKey(ignore: true)
  _$AlbumResCopyWith<_AlbumRes> get copyWith =>
      throw _privateConstructorUsedError;
}

DataAlbumRes _$DataAlbumResFromJson(Map<String, dynamic> json) {
  return _DataAlbumRes.fromJson(json);
}

/// @nodoc
class _$DataAlbumResTearOff {
  const _$DataAlbumResTearOff();

  _DataAlbumRes call(
      {@JsonKey(name: 'id', defaultValue: 0)
          required int id,
      @JsonKey(name: 'cover', defaultValue: '')
          required String cover,
      @JsonKey(name: 'release_title', defaultValue: '')
          required String releaseTitle,
      @JsonKey(name: 'title_version', defaultValue: '')
          required String titleVersion,
      @JsonKey(name: 'spotify', defaultValue: '')
          required String spotify,
      @JsonKey(name: 'itunes', defaultValue: '')
          required String itunes,
      @JsonKey(name: 'p_copyright', defaultValue: '')
          required String pCopyright,
      @JsonKey(name: 'c_copyright', defaultValue: '')
          required String cCopyright,
      @JsonKey(name: 'released_date', defaultValue: '')
          required String releasedDate,
      @JsonKey(name: 'label_name')
          LabelRes? labelName,
      @JsonKey(name: 'released_id', defaultValue: 0)
          required int releasedId,
      @JsonKey(name: 'upc', defaultValue: 0)
          required int upc,
      @JsonKey(name: 'is_check', defaultValue: 0)
          required int isCheck,
      @JsonKey(name: 'label')
          LabelRes? labelMain,
      @JsonKey(name: 'lang_id')
          LanguageRes? langId,
      @JsonKey(name: 'track_id')
          TrackIdRes? trackId,
      @JsonKey(name: 'genre_1')
          GenreRes? genre1,
      @JsonKey(name: 'genre_2')
          GenreRes? genre2,
      @JsonKey(name: 'user_id')
          UserRes? user}) {
    return _DataAlbumRes(
      id: id,
      cover: cover,
      releaseTitle: releaseTitle,
      titleVersion: titleVersion,
      spotify: spotify,
      itunes: itunes,
      pCopyright: pCopyright,
      cCopyright: cCopyright,
      releasedDate: releasedDate,
      labelName: labelName,
      releasedId: releasedId,
      upc: upc,
      isCheck: isCheck,
      labelMain: labelMain,
      langId: langId,
      trackId: trackId,
      genre1: genre1,
      genre2: genre2,
      user: user,
    );
  }

  DataAlbumRes fromJson(Map<String, Object?> json) {
    return DataAlbumRes.fromJson(json);
  }
}

/// @nodoc
const $DataAlbumRes = _$DataAlbumResTearOff();

/// @nodoc
mixin _$DataAlbumRes {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover', defaultValue: '')
  String get cover => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_title', defaultValue: '')
  String get releaseTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_version', defaultValue: '')
  String get titleVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'spotify', defaultValue: '')
  String get spotify => throw _privateConstructorUsedError;
  @JsonKey(name: 'itunes', defaultValue: '')
  String get itunes => throw _privateConstructorUsedError;
  @JsonKey(name: 'p_copyright', defaultValue: '')
  String get pCopyright => throw _privateConstructorUsedError;
  @JsonKey(name: 'c_copyright', defaultValue: '')
  String get cCopyright => throw _privateConstructorUsedError;
  @JsonKey(name: 'released_date', defaultValue: '')
  String get releasedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'label_name')
  LabelRes? get labelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'released_id', defaultValue: 0)
  int get releasedId => throw _privateConstructorUsedError;
  @JsonKey(name: 'upc', defaultValue: 0)
  int get upc => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_check', defaultValue: 0)
  int get isCheck => throw _privateConstructorUsedError;
  @JsonKey(name: 'label')
  LabelRes? get labelMain => throw _privateConstructorUsedError;
  @JsonKey(name: 'lang_id')
  LanguageRes? get langId => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_id')
  TrackIdRes? get trackId => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_1')
  GenreRes? get genre1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_2')
  GenreRes? get genre2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  UserRes? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataAlbumResCopyWith<DataAlbumRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataAlbumResCopyWith<$Res> {
  factory $DataAlbumResCopyWith(
          DataAlbumRes value, $Res Function(DataAlbumRes) then) =
      _$DataAlbumResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'cover', defaultValue: '') String cover,
      @JsonKey(name: 'release_title', defaultValue: '') String releaseTitle,
      @JsonKey(name: 'title_version', defaultValue: '') String titleVersion,
      @JsonKey(name: 'spotify', defaultValue: '') String spotify,
      @JsonKey(name: 'itunes', defaultValue: '') String itunes,
      @JsonKey(name: 'p_copyright', defaultValue: '') String pCopyright,
      @JsonKey(name: 'c_copyright', defaultValue: '') String cCopyright,
      @JsonKey(name: 'released_date', defaultValue: '') String releasedDate,
      @JsonKey(name: 'label_name') LabelRes? labelName,
      @JsonKey(name: 'released_id', defaultValue: 0) int releasedId,
      @JsonKey(name: 'upc', defaultValue: 0) int upc,
      @JsonKey(name: 'is_check', defaultValue: 0) int isCheck,
      @JsonKey(name: 'label') LabelRes? labelMain,
      @JsonKey(name: 'lang_id') LanguageRes? langId,
      @JsonKey(name: 'track_id') TrackIdRes? trackId,
      @JsonKey(name: 'genre_1') GenreRes? genre1,
      @JsonKey(name: 'genre_2') GenreRes? genre2,
      @JsonKey(name: 'user_id') UserRes? user});

  $LabelResCopyWith<$Res>? get labelName;
  $LabelResCopyWith<$Res>? get labelMain;
  $LanguageResCopyWith<$Res>? get langId;
  $TrackIdResCopyWith<$Res>? get trackId;
  $GenreResCopyWith<$Res>? get genre1;
  $GenreResCopyWith<$Res>? get genre2;
  $UserResCopyWith<$Res>? get user;
}

/// @nodoc
class _$DataAlbumResCopyWithImpl<$Res> implements $DataAlbumResCopyWith<$Res> {
  _$DataAlbumResCopyWithImpl(this._value, this._then);

  final DataAlbumRes _value;
  // ignore: unused_field
  final $Res Function(DataAlbumRes) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? cover = freezed,
    Object? releaseTitle = freezed,
    Object? titleVersion = freezed,
    Object? spotify = freezed,
    Object? itunes = freezed,
    Object? pCopyright = freezed,
    Object? cCopyright = freezed,
    Object? releasedDate = freezed,
    Object? labelName = freezed,
    Object? releasedId = freezed,
    Object? upc = freezed,
    Object? isCheck = freezed,
    Object? labelMain = freezed,
    Object? langId = freezed,
    Object? trackId = freezed,
    Object? genre1 = freezed,
    Object? genre2 = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      releaseTitle: releaseTitle == freezed
          ? _value.releaseTitle
          : releaseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      titleVersion: titleVersion == freezed
          ? _value.titleVersion
          : titleVersion // ignore: cast_nullable_to_non_nullable
              as String,
      spotify: spotify == freezed
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
      itunes: itunes == freezed
          ? _value.itunes
          : itunes // ignore: cast_nullable_to_non_nullable
              as String,
      pCopyright: pCopyright == freezed
          ? _value.pCopyright
          : pCopyright // ignore: cast_nullable_to_non_nullable
              as String,
      cCopyright: cCopyright == freezed
          ? _value.cCopyright
          : cCopyright // ignore: cast_nullable_to_non_nullable
              as String,
      releasedDate: releasedDate == freezed
          ? _value.releasedDate
          : releasedDate // ignore: cast_nullable_to_non_nullable
              as String,
      labelName: labelName == freezed
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as LabelRes?,
      releasedId: releasedId == freezed
          ? _value.releasedId
          : releasedId // ignore: cast_nullable_to_non_nullable
              as int,
      upc: upc == freezed
          ? _value.upc
          : upc // ignore: cast_nullable_to_non_nullable
              as int,
      isCheck: isCheck == freezed
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as int,
      labelMain: labelMain == freezed
          ? _value.labelMain
          : labelMain // ignore: cast_nullable_to_non_nullable
              as LabelRes?,
      langId: langId == freezed
          ? _value.langId
          : langId // ignore: cast_nullable_to_non_nullable
              as LanguageRes?,
      trackId: trackId == freezed
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as TrackIdRes?,
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
  $LabelResCopyWith<$Res>? get labelMain {
    if (_value.labelMain == null) {
      return null;
    }

    return $LabelResCopyWith<$Res>(_value.labelMain!, (value) {
      return _then(_value.copyWith(labelMain: value));
    });
  }

  @override
  $LanguageResCopyWith<$Res>? get langId {
    if (_value.langId == null) {
      return null;
    }

    return $LanguageResCopyWith<$Res>(_value.langId!, (value) {
      return _then(_value.copyWith(langId: value));
    });
  }

  @override
  $TrackIdResCopyWith<$Res>? get trackId {
    if (_value.trackId == null) {
      return null;
    }

    return $TrackIdResCopyWith<$Res>(_value.trackId!, (value) {
      return _then(_value.copyWith(trackId: value));
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
abstract class _$DataAlbumResCopyWith<$Res>
    implements $DataAlbumResCopyWith<$Res> {
  factory _$DataAlbumResCopyWith(
          _DataAlbumRes value, $Res Function(_DataAlbumRes) then) =
      __$DataAlbumResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'cover', defaultValue: '') String cover,
      @JsonKey(name: 'release_title', defaultValue: '') String releaseTitle,
      @JsonKey(name: 'title_version', defaultValue: '') String titleVersion,
      @JsonKey(name: 'spotify', defaultValue: '') String spotify,
      @JsonKey(name: 'itunes', defaultValue: '') String itunes,
      @JsonKey(name: 'p_copyright', defaultValue: '') String pCopyright,
      @JsonKey(name: 'c_copyright', defaultValue: '') String cCopyright,
      @JsonKey(name: 'released_date', defaultValue: '') String releasedDate,
      @JsonKey(name: 'label_name') LabelRes? labelName,
      @JsonKey(name: 'released_id', defaultValue: 0) int releasedId,
      @JsonKey(name: 'upc', defaultValue: 0) int upc,
      @JsonKey(name: 'is_check', defaultValue: 0) int isCheck,
      @JsonKey(name: 'label') LabelRes? labelMain,
      @JsonKey(name: 'lang_id') LanguageRes? langId,
      @JsonKey(name: 'track_id') TrackIdRes? trackId,
      @JsonKey(name: 'genre_1') GenreRes? genre1,
      @JsonKey(name: 'genre_2') GenreRes? genre2,
      @JsonKey(name: 'user_id') UserRes? user});

  @override
  $LabelResCopyWith<$Res>? get labelName;
  @override
  $LabelResCopyWith<$Res>? get labelMain;
  @override
  $LanguageResCopyWith<$Res>? get langId;
  @override
  $TrackIdResCopyWith<$Res>? get trackId;
  @override
  $GenreResCopyWith<$Res>? get genre1;
  @override
  $GenreResCopyWith<$Res>? get genre2;
  @override
  $UserResCopyWith<$Res>? get user;
}

/// @nodoc
class __$DataAlbumResCopyWithImpl<$Res> extends _$DataAlbumResCopyWithImpl<$Res>
    implements _$DataAlbumResCopyWith<$Res> {
  __$DataAlbumResCopyWithImpl(
      _DataAlbumRes _value, $Res Function(_DataAlbumRes) _then)
      : super(_value, (v) => _then(v as _DataAlbumRes));

  @override
  _DataAlbumRes get _value => super._value as _DataAlbumRes;

  @override
  $Res call({
    Object? id = freezed,
    Object? cover = freezed,
    Object? releaseTitle = freezed,
    Object? titleVersion = freezed,
    Object? spotify = freezed,
    Object? itunes = freezed,
    Object? pCopyright = freezed,
    Object? cCopyright = freezed,
    Object? releasedDate = freezed,
    Object? labelName = freezed,
    Object? releasedId = freezed,
    Object? upc = freezed,
    Object? isCheck = freezed,
    Object? labelMain = freezed,
    Object? langId = freezed,
    Object? trackId = freezed,
    Object? genre1 = freezed,
    Object? genre2 = freezed,
    Object? user = freezed,
  }) {
    return _then(_DataAlbumRes(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      releaseTitle: releaseTitle == freezed
          ? _value.releaseTitle
          : releaseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      titleVersion: titleVersion == freezed
          ? _value.titleVersion
          : titleVersion // ignore: cast_nullable_to_non_nullable
              as String,
      spotify: spotify == freezed
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
      itunes: itunes == freezed
          ? _value.itunes
          : itunes // ignore: cast_nullable_to_non_nullable
              as String,
      pCopyright: pCopyright == freezed
          ? _value.pCopyright
          : pCopyright // ignore: cast_nullable_to_non_nullable
              as String,
      cCopyright: cCopyright == freezed
          ? _value.cCopyright
          : cCopyright // ignore: cast_nullable_to_non_nullable
              as String,
      releasedDate: releasedDate == freezed
          ? _value.releasedDate
          : releasedDate // ignore: cast_nullable_to_non_nullable
              as String,
      labelName: labelName == freezed
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as LabelRes?,
      releasedId: releasedId == freezed
          ? _value.releasedId
          : releasedId // ignore: cast_nullable_to_non_nullable
              as int,
      upc: upc == freezed
          ? _value.upc
          : upc // ignore: cast_nullable_to_non_nullable
              as int,
      isCheck: isCheck == freezed
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as int,
      labelMain: labelMain == freezed
          ? _value.labelMain
          : labelMain // ignore: cast_nullable_to_non_nullable
              as LabelRes?,
      langId: langId == freezed
          ? _value.langId
          : langId // ignore: cast_nullable_to_non_nullable
              as LanguageRes?,
      trackId: trackId == freezed
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as TrackIdRes?,
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
class _$_DataAlbumRes extends _DataAlbumRes {
  const _$_DataAlbumRes(
      {@JsonKey(name: 'id', defaultValue: 0)
          required this.id,
      @JsonKey(name: 'cover', defaultValue: '')
          required this.cover,
      @JsonKey(name: 'release_title', defaultValue: '')
          required this.releaseTitle,
      @JsonKey(name: 'title_version', defaultValue: '')
          required this.titleVersion,
      @JsonKey(name: 'spotify', defaultValue: '')
          required this.spotify,
      @JsonKey(name: 'itunes', defaultValue: '')
          required this.itunes,
      @JsonKey(name: 'p_copyright', defaultValue: '')
          required this.pCopyright,
      @JsonKey(name: 'c_copyright', defaultValue: '')
          required this.cCopyright,
      @JsonKey(name: 'released_date', defaultValue: '')
          required this.releasedDate,
      @JsonKey(name: 'label_name')
          this.labelName,
      @JsonKey(name: 'released_id', defaultValue: 0)
          required this.releasedId,
      @JsonKey(name: 'upc', defaultValue: 0)
          required this.upc,
      @JsonKey(name: 'is_check', defaultValue: 0)
          required this.isCheck,
      @JsonKey(name: 'label')
          this.labelMain,
      @JsonKey(name: 'lang_id')
          this.langId,
      @JsonKey(name: 'track_id')
          this.trackId,
      @JsonKey(name: 'genre_1')
          this.genre1,
      @JsonKey(name: 'genre_2')
          this.genre2,
      @JsonKey(name: 'user_id')
          this.user})
      : super._();

  factory _$_DataAlbumRes.fromJson(Map<String, dynamic> json) =>
      _$$_DataAlbumResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'cover', defaultValue: '')
  final String cover;
  @override
  @JsonKey(name: 'release_title', defaultValue: '')
  final String releaseTitle;
  @override
  @JsonKey(name: 'title_version', defaultValue: '')
  final String titleVersion;
  @override
  @JsonKey(name: 'spotify', defaultValue: '')
  final String spotify;
  @override
  @JsonKey(name: 'itunes', defaultValue: '')
  final String itunes;
  @override
  @JsonKey(name: 'p_copyright', defaultValue: '')
  final String pCopyright;
  @override
  @JsonKey(name: 'c_copyright', defaultValue: '')
  final String cCopyright;
  @override
  @JsonKey(name: 'released_date', defaultValue: '')
  final String releasedDate;
  @override
  @JsonKey(name: 'label_name')
  final LabelRes? labelName;
  @override
  @JsonKey(name: 'released_id', defaultValue: 0)
  final int releasedId;
  @override
  @JsonKey(name: 'upc', defaultValue: 0)
  final int upc;
  @override
  @JsonKey(name: 'is_check', defaultValue: 0)
  final int isCheck;
  @override
  @JsonKey(name: 'label')
  final LabelRes? labelMain;
  @override
  @JsonKey(name: 'lang_id')
  final LanguageRes? langId;
  @override
  @JsonKey(name: 'track_id')
  final TrackIdRes? trackId;
  @override
  @JsonKey(name: 'genre_1')
  final GenreRes? genre1;
  @override
  @JsonKey(name: 'genre_2')
  final GenreRes? genre2;
  @override
  @JsonKey(name: 'user_id')
  final UserRes? user;

  @override
  String toString() {
    return 'DataAlbumRes(id: $id, cover: $cover, releaseTitle: $releaseTitle, titleVersion: $titleVersion, spotify: $spotify, itunes: $itunes, pCopyright: $pCopyright, cCopyright: $cCopyright, releasedDate: $releasedDate, labelName: $labelName, releasedId: $releasedId, upc: $upc, isCheck: $isCheck, labelMain: $labelMain, langId: $langId, trackId: $trackId, genre1: $genre1, genre2: $genre2, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataAlbumRes &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.cover, cover) &&
            const DeepCollectionEquality()
                .equals(other.releaseTitle, releaseTitle) &&
            const DeepCollectionEquality()
                .equals(other.titleVersion, titleVersion) &&
            const DeepCollectionEquality().equals(other.spotify, spotify) &&
            const DeepCollectionEquality().equals(other.itunes, itunes) &&
            const DeepCollectionEquality()
                .equals(other.pCopyright, pCopyright) &&
            const DeepCollectionEquality()
                .equals(other.cCopyright, cCopyright) &&
            const DeepCollectionEquality()
                .equals(other.releasedDate, releasedDate) &&
            const DeepCollectionEquality().equals(other.labelName, labelName) &&
            const DeepCollectionEquality()
                .equals(other.releasedId, releasedId) &&
            const DeepCollectionEquality().equals(other.upc, upc) &&
            const DeepCollectionEquality().equals(other.isCheck, isCheck) &&
            const DeepCollectionEquality().equals(other.labelMain, labelMain) &&
            const DeepCollectionEquality().equals(other.langId, langId) &&
            const DeepCollectionEquality().equals(other.trackId, trackId) &&
            const DeepCollectionEquality().equals(other.genre1, genre1) &&
            const DeepCollectionEquality().equals(other.genre2, genre2) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(cover),
        const DeepCollectionEquality().hash(releaseTitle),
        const DeepCollectionEquality().hash(titleVersion),
        const DeepCollectionEquality().hash(spotify),
        const DeepCollectionEquality().hash(itunes),
        const DeepCollectionEquality().hash(pCopyright),
        const DeepCollectionEquality().hash(cCopyright),
        const DeepCollectionEquality().hash(releasedDate),
        const DeepCollectionEquality().hash(labelName),
        const DeepCollectionEquality().hash(releasedId),
        const DeepCollectionEquality().hash(upc),
        const DeepCollectionEquality().hash(isCheck),
        const DeepCollectionEquality().hash(labelMain),
        const DeepCollectionEquality().hash(langId),
        const DeepCollectionEquality().hash(trackId),
        const DeepCollectionEquality().hash(genre1),
        const DeepCollectionEquality().hash(genre2),
        const DeepCollectionEquality().hash(user)
      ]);

  @JsonKey(ignore: true)
  @override
  _$DataAlbumResCopyWith<_DataAlbumRes> get copyWith =>
      __$DataAlbumResCopyWithImpl<_DataAlbumRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataAlbumResToJson(this);
  }
}

abstract class _DataAlbumRes extends DataAlbumRes {
  const factory _DataAlbumRes(
      {@JsonKey(name: 'id', defaultValue: 0)
          required int id,
      @JsonKey(name: 'cover', defaultValue: '')
          required String cover,
      @JsonKey(name: 'release_title', defaultValue: '')
          required String releaseTitle,
      @JsonKey(name: 'title_version', defaultValue: '')
          required String titleVersion,
      @JsonKey(name: 'spotify', defaultValue: '')
          required String spotify,
      @JsonKey(name: 'itunes', defaultValue: '')
          required String itunes,
      @JsonKey(name: 'p_copyright', defaultValue: '')
          required String pCopyright,
      @JsonKey(name: 'c_copyright', defaultValue: '')
          required String cCopyright,
      @JsonKey(name: 'released_date', defaultValue: '')
          required String releasedDate,
      @JsonKey(name: 'label_name')
          LabelRes? labelName,
      @JsonKey(name: 'released_id', defaultValue: 0)
          required int releasedId,
      @JsonKey(name: 'upc', defaultValue: 0)
          required int upc,
      @JsonKey(name: 'is_check', defaultValue: 0)
          required int isCheck,
      @JsonKey(name: 'label')
          LabelRes? labelMain,
      @JsonKey(name: 'lang_id')
          LanguageRes? langId,
      @JsonKey(name: 'track_id')
          TrackIdRes? trackId,
      @JsonKey(name: 'genre_1')
          GenreRes? genre1,
      @JsonKey(name: 'genre_2')
          GenreRes? genre2,
      @JsonKey(name: 'user_id')
          UserRes? user}) = _$_DataAlbumRes;
  const _DataAlbumRes._() : super._();

  factory _DataAlbumRes.fromJson(Map<String, dynamic> json) =
      _$_DataAlbumRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'cover', defaultValue: '')
  String get cover;
  @override
  @JsonKey(name: 'release_title', defaultValue: '')
  String get releaseTitle;
  @override
  @JsonKey(name: 'title_version', defaultValue: '')
  String get titleVersion;
  @override
  @JsonKey(name: 'spotify', defaultValue: '')
  String get spotify;
  @override
  @JsonKey(name: 'itunes', defaultValue: '')
  String get itunes;
  @override
  @JsonKey(name: 'p_copyright', defaultValue: '')
  String get pCopyright;
  @override
  @JsonKey(name: 'c_copyright', defaultValue: '')
  String get cCopyright;
  @override
  @JsonKey(name: 'released_date', defaultValue: '')
  String get releasedDate;
  @override
  @JsonKey(name: 'label_name')
  LabelRes? get labelName;
  @override
  @JsonKey(name: 'released_id', defaultValue: 0)
  int get releasedId;
  @override
  @JsonKey(name: 'upc', defaultValue: 0)
  int get upc;
  @override
  @JsonKey(name: 'is_check', defaultValue: 0)
  int get isCheck;
  @override
  @JsonKey(name: 'label')
  LabelRes? get labelMain;
  @override
  @JsonKey(name: 'lang_id')
  LanguageRes? get langId;
  @override
  @JsonKey(name: 'track_id')
  TrackIdRes? get trackId;
  @override
  @JsonKey(name: 'genre_1')
  GenreRes? get genre1;
  @override
  @JsonKey(name: 'genre_2')
  GenreRes? get genre2;
  @override
  @JsonKey(name: 'user_id')
  UserRes? get user;
  @override
  @JsonKey(ignore: true)
  _$DataAlbumResCopyWith<_DataAlbumRes> get copyWith =>
      throw _privateConstructorUsedError;
}

TrackIdRes _$TrackIdResFromJson(Map<String, dynamic> json) {
  return _TrackIdRes.fromJson(json);
}

/// @nodoc
class _$TrackIdResTearOff {
  const _$TrackIdResTearOff();

  _TrackIdRes call(
      {@JsonKey(name: 'artis_name', defaultValue: '')
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
      @JsonKey(name: 'lang_lyric', defaultValue: 0)
          required int langYyric,
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
      @JsonKey(name: 'internal_track_id', defaultValue: 0)
          required int internalTrackId,
      @JsonKey(name: 'lyric', defaultValue: '')
          required String lyric,
      @JsonKey(name: 'contributor_id', defaultValue: '')
          required String contributorId,
      @JsonKey(name: 'contributor')
          ConstributorRes? contributor,
      @JsonKey(name: 'lang')
          LanguageRes? lang,
      @JsonKey(name: 'genre1')
          GenreRes? genre1,
      @JsonKey(name: 'genre2')
          GenreRes? genre2}) {
    return _TrackIdRes(
      artisName: artisName,
      artisNameAnotherId: artisNameAnotherId,
      image: image,
      cover: cover,
      trackTitle: trackTitle,
      trackVersion: trackVersion,
      trackTitleAnotherId: trackTitleAnotherId,
      isrc: isrc,
      langYyric: langYyric,
      createdAt: createdAt,
      spotify: spotify,
      itunes: itunes,
      otherArtisId: otherArtisId,
      explisitLyric: explisitLyric,
      thisTrackIs: thisTrackIs,
      pCopyright: pCopyright,
      previewsStartTime: previewsStartTime,
      internalTrackId: internalTrackId,
      lyric: lyric,
      contributorId: contributorId,
      contributor: contributor,
      lang: lang,
      genre1: genre1,
      genre2: genre2,
    );
  }

  TrackIdRes fromJson(Map<String, Object?> json) {
    return TrackIdRes.fromJson(json);
  }
}

/// @nodoc
const $TrackIdRes = _$TrackIdResTearOff();

/// @nodoc
mixin _$TrackIdRes {
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
  @JsonKey(name: 'lang_lyric', defaultValue: 0)
  int get langYyric => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'internal_track_id', defaultValue: 0)
  int get internalTrackId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lyric', defaultValue: '')
  String get lyric => throw _privateConstructorUsedError;
  @JsonKey(name: 'contributor_id', defaultValue: '')
  String get contributorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'contributor')
  ConstributorRes? get contributor => throw _privateConstructorUsedError;
  @JsonKey(name: 'lang')
  LanguageRes? get lang => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre1')
  GenreRes? get genre1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre2')
  GenreRes? get genre2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackIdResCopyWith<TrackIdRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackIdResCopyWith<$Res> {
  factory $TrackIdResCopyWith(
          TrackIdRes value, $Res Function(TrackIdRes) then) =
      _$TrackIdResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'artis_name', defaultValue: '')
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
      @JsonKey(name: 'lang_lyric', defaultValue: 0)
          int langYyric,
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
      @JsonKey(name: 'internal_track_id', defaultValue: 0)
          int internalTrackId,
      @JsonKey(name: 'lyric', defaultValue: '')
          String lyric,
      @JsonKey(name: 'contributor_id', defaultValue: '')
          String contributorId,
      @JsonKey(name: 'contributor')
          ConstributorRes? contributor,
      @JsonKey(name: 'lang')
          LanguageRes? lang,
      @JsonKey(name: 'genre1')
          GenreRes? genre1,
      @JsonKey(name: 'genre2')
          GenreRes? genre2});

  $ConstributorResCopyWith<$Res>? get contributor;
  $LanguageResCopyWith<$Res>? get lang;
  $GenreResCopyWith<$Res>? get genre1;
  $GenreResCopyWith<$Res>? get genre2;
}

/// @nodoc
class _$TrackIdResCopyWithImpl<$Res> implements $TrackIdResCopyWith<$Res> {
  _$TrackIdResCopyWithImpl(this._value, this._then);

  final TrackIdRes _value;
  // ignore: unused_field
  final $Res Function(TrackIdRes) _then;

  @override
  $Res call({
    Object? artisName = freezed,
    Object? artisNameAnotherId = freezed,
    Object? image = freezed,
    Object? cover = freezed,
    Object? trackTitle = freezed,
    Object? trackVersion = freezed,
    Object? trackTitleAnotherId = freezed,
    Object? isrc = freezed,
    Object? langYyric = freezed,
    Object? createdAt = freezed,
    Object? spotify = freezed,
    Object? itunes = freezed,
    Object? otherArtisId = freezed,
    Object? explisitLyric = freezed,
    Object? thisTrackIs = freezed,
    Object? pCopyright = freezed,
    Object? previewsStartTime = freezed,
    Object? internalTrackId = freezed,
    Object? lyric = freezed,
    Object? contributorId = freezed,
    Object? contributor = freezed,
    Object? lang = freezed,
    Object? genre1 = freezed,
    Object? genre2 = freezed,
  }) {
    return _then(_value.copyWith(
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
      langYyric: langYyric == freezed
          ? _value.langYyric
          : langYyric // ignore: cast_nullable_to_non_nullable
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
    ));
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
}

/// @nodoc
abstract class _$TrackIdResCopyWith<$Res> implements $TrackIdResCopyWith<$Res> {
  factory _$TrackIdResCopyWith(
          _TrackIdRes value, $Res Function(_TrackIdRes) then) =
      __$TrackIdResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'artis_name', defaultValue: '')
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
      @JsonKey(name: 'lang_lyric', defaultValue: 0)
          int langYyric,
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
      @JsonKey(name: 'internal_track_id', defaultValue: 0)
          int internalTrackId,
      @JsonKey(name: 'lyric', defaultValue: '')
          String lyric,
      @JsonKey(name: 'contributor_id', defaultValue: '')
          String contributorId,
      @JsonKey(name: 'contributor')
          ConstributorRes? contributor,
      @JsonKey(name: 'lang')
          LanguageRes? lang,
      @JsonKey(name: 'genre1')
          GenreRes? genre1,
      @JsonKey(name: 'genre2')
          GenreRes? genre2});

  @override
  $ConstributorResCopyWith<$Res>? get contributor;
  @override
  $LanguageResCopyWith<$Res>? get lang;
  @override
  $GenreResCopyWith<$Res>? get genre1;
  @override
  $GenreResCopyWith<$Res>? get genre2;
}

/// @nodoc
class __$TrackIdResCopyWithImpl<$Res> extends _$TrackIdResCopyWithImpl<$Res>
    implements _$TrackIdResCopyWith<$Res> {
  __$TrackIdResCopyWithImpl(
      _TrackIdRes _value, $Res Function(_TrackIdRes) _then)
      : super(_value, (v) => _then(v as _TrackIdRes));

  @override
  _TrackIdRes get _value => super._value as _TrackIdRes;

  @override
  $Res call({
    Object? artisName = freezed,
    Object? artisNameAnotherId = freezed,
    Object? image = freezed,
    Object? cover = freezed,
    Object? trackTitle = freezed,
    Object? trackVersion = freezed,
    Object? trackTitleAnotherId = freezed,
    Object? isrc = freezed,
    Object? langYyric = freezed,
    Object? createdAt = freezed,
    Object? spotify = freezed,
    Object? itunes = freezed,
    Object? otherArtisId = freezed,
    Object? explisitLyric = freezed,
    Object? thisTrackIs = freezed,
    Object? pCopyright = freezed,
    Object? previewsStartTime = freezed,
    Object? internalTrackId = freezed,
    Object? lyric = freezed,
    Object? contributorId = freezed,
    Object? contributor = freezed,
    Object? lang = freezed,
    Object? genre1 = freezed,
    Object? genre2 = freezed,
  }) {
    return _then(_TrackIdRes(
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
      langYyric: langYyric == freezed
          ? _value.langYyric
          : langYyric // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_TrackIdRes extends _TrackIdRes {
  const _$_TrackIdRes(
      {@JsonKey(name: 'artis_name', defaultValue: '')
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
      @JsonKey(name: 'lang_lyric', defaultValue: 0)
          required this.langYyric,
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
      @JsonKey(name: 'internal_track_id', defaultValue: 0)
          required this.internalTrackId,
      @JsonKey(name: 'lyric', defaultValue: '')
          required this.lyric,
      @JsonKey(name: 'contributor_id', defaultValue: '')
          required this.contributorId,
      @JsonKey(name: 'contributor')
          this.contributor,
      @JsonKey(name: 'lang')
          this.lang,
      @JsonKey(name: 'genre1')
          this.genre1,
      @JsonKey(name: 'genre2')
          this.genre2})
      : super._();

  factory _$_TrackIdRes.fromJson(Map<String, dynamic> json) =>
      _$$_TrackIdResFromJson(json);

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
  @JsonKey(name: 'lang_lyric', defaultValue: 0)
  final int langYyric;
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
  @JsonKey(name: 'lang')
  final LanguageRes? lang;
  @override
  @JsonKey(name: 'genre1')
  final GenreRes? genre1;
  @override
  @JsonKey(name: 'genre2')
  final GenreRes? genre2;

  @override
  String toString() {
    return 'TrackIdRes(artisName: $artisName, artisNameAnotherId: $artisNameAnotherId, image: $image, cover: $cover, trackTitle: $trackTitle, trackVersion: $trackVersion, trackTitleAnotherId: $trackTitleAnotherId, isrc: $isrc, langYyric: $langYyric, createdAt: $createdAt, spotify: $spotify, itunes: $itunes, otherArtisId: $otherArtisId, explisitLyric: $explisitLyric, thisTrackIs: $thisTrackIs, pCopyright: $pCopyright, previewsStartTime: $previewsStartTime, internalTrackId: $internalTrackId, lyric: $lyric, contributorId: $contributorId, contributor: $contributor, lang: $lang, genre1: $genre1, genre2: $genre2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrackIdRes &&
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
            const DeepCollectionEquality().equals(other.langYyric, langYyric) &&
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
            const DeepCollectionEquality()
                .equals(other.internalTrackId, internalTrackId) &&
            const DeepCollectionEquality().equals(other.lyric, lyric) &&
            const DeepCollectionEquality()
                .equals(other.contributorId, contributorId) &&
            const DeepCollectionEquality()
                .equals(other.contributor, contributor) &&
            const DeepCollectionEquality().equals(other.lang, lang) &&
            const DeepCollectionEquality().equals(other.genre1, genre1) &&
            const DeepCollectionEquality().equals(other.genre2, genre2));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(artisName),
        const DeepCollectionEquality().hash(artisNameAnotherId),
        const DeepCollectionEquality().hash(image),
        const DeepCollectionEquality().hash(cover),
        const DeepCollectionEquality().hash(trackTitle),
        const DeepCollectionEquality().hash(trackVersion),
        const DeepCollectionEquality().hash(trackTitleAnotherId),
        const DeepCollectionEquality().hash(isrc),
        const DeepCollectionEquality().hash(langYyric),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(spotify),
        const DeepCollectionEquality().hash(itunes),
        const DeepCollectionEquality().hash(otherArtisId),
        const DeepCollectionEquality().hash(explisitLyric),
        const DeepCollectionEquality().hash(thisTrackIs),
        const DeepCollectionEquality().hash(pCopyright),
        const DeepCollectionEquality().hash(previewsStartTime),
        const DeepCollectionEquality().hash(internalTrackId),
        const DeepCollectionEquality().hash(lyric),
        const DeepCollectionEquality().hash(contributorId),
        const DeepCollectionEquality().hash(contributor),
        const DeepCollectionEquality().hash(lang),
        const DeepCollectionEquality().hash(genre1),
        const DeepCollectionEquality().hash(genre2)
      ]);

  @JsonKey(ignore: true)
  @override
  _$TrackIdResCopyWith<_TrackIdRes> get copyWith =>
      __$TrackIdResCopyWithImpl<_TrackIdRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackIdResToJson(this);
  }
}

abstract class _TrackIdRes extends TrackIdRes {
  const factory _TrackIdRes(
      {@JsonKey(name: 'artis_name', defaultValue: '')
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
      @JsonKey(name: 'lang_lyric', defaultValue: 0)
          required int langYyric,
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
      @JsonKey(name: 'internal_track_id', defaultValue: 0)
          required int internalTrackId,
      @JsonKey(name: 'lyric', defaultValue: '')
          required String lyric,
      @JsonKey(name: 'contributor_id', defaultValue: '')
          required String contributorId,
      @JsonKey(name: 'contributor')
          ConstributorRes? contributor,
      @JsonKey(name: 'lang')
          LanguageRes? lang,
      @JsonKey(name: 'genre1')
          GenreRes? genre1,
      @JsonKey(name: 'genre2')
          GenreRes? genre2}) = _$_TrackIdRes;
  const _TrackIdRes._() : super._();

  factory _TrackIdRes.fromJson(Map<String, dynamic> json) =
      _$_TrackIdRes.fromJson;

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
  @JsonKey(name: 'lang_lyric', defaultValue: 0)
  int get langYyric;
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
  @JsonKey(name: 'lang')
  LanguageRes? get lang;
  @override
  @JsonKey(name: 'genre1')
  GenreRes? get genre1;
  @override
  @JsonKey(name: 'genre2')
  GenreRes? get genre2;
  @override
  @JsonKey(ignore: true)
  _$TrackIdResCopyWith<_TrackIdRes> get copyWith =>
      throw _privateConstructorUsedError;
}
