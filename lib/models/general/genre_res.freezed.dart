// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'genre_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenreRes _$GenreResFromJson(Map<String, dynamic> json) {
  return _GenreRes.fromJson(json);
}

/// @nodoc
class _$GenreResTearOff {
  const _$GenreResTearOff();

  _GenreRes call(
      {@JsonKey(name: 'id', defaultValue: 0) required int id,
      @JsonKey(name: 'name', defaultValue: '') required String name}) {
    return _GenreRes(
      id: id,
      name: name,
    );
  }

  GenreRes fromJson(Map<String, Object?> json) {
    return GenreRes.fromJson(json);
  }
}

/// @nodoc
const $GenreRes = _$GenreResTearOff();

/// @nodoc
mixin _$GenreRes {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreResCopyWith<GenreRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreResCopyWith<$Res> {
  factory $GenreResCopyWith(GenreRes value, $Res Function(GenreRes) then) =
      _$GenreResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class _$GenreResCopyWithImpl<$Res> implements $GenreResCopyWith<$Res> {
  _$GenreResCopyWithImpl(this._value, this._then);

  final GenreRes _value;
  // ignore: unused_field
  final $Res Function(GenreRes) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GenreResCopyWith<$Res> implements $GenreResCopyWith<$Res> {
  factory _$GenreResCopyWith(_GenreRes value, $Res Function(_GenreRes) then) =
      __$GenreResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class __$GenreResCopyWithImpl<$Res> extends _$GenreResCopyWithImpl<$Res>
    implements _$GenreResCopyWith<$Res> {
  __$GenreResCopyWithImpl(_GenreRes _value, $Res Function(_GenreRes) _then)
      : super(_value, (v) => _then(v as _GenreRes));

  @override
  _GenreRes get _value => super._value as _GenreRes;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_GenreRes(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_GenreRes extends _GenreRes {
  const _$_GenreRes(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'name', defaultValue: '') required this.name})
      : super._();

  factory _$_GenreRes.fromJson(Map<String, dynamic> json) =>
      _$$_GenreResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;

  @override
  String toString() {
    return 'GenreRes(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenreRes &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$GenreResCopyWith<_GenreRes> get copyWith =>
      __$GenreResCopyWithImpl<_GenreRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenreResToJson(this);
  }
}

abstract class _GenreRes extends GenreRes {
  const factory _GenreRes(
          {@JsonKey(name: 'id', defaultValue: 0) required int id,
          @JsonKey(name: 'name', defaultValue: '') required String name}) =
      _$_GenreRes;
  const _GenreRes._() : super._();

  factory _GenreRes.fromJson(Map<String, dynamic> json) = _$_GenreRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$GenreResCopyWith<_GenreRes> get copyWith =>
      throw _privateConstructorUsedError;
}
