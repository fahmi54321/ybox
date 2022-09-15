// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'language_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageRes _$LanguageResFromJson(Map<String, dynamic> json) {
  return _LanguageRes.fromJson(json);
}

/// @nodoc
class _$LanguageResTearOff {
  const _$LanguageResTearOff();

  _LanguageRes call(
      {@JsonKey(name: 'id', defaultValue: 0) required int id,
      @JsonKey(name: 'name', defaultValue: '') required String name}) {
    return _LanguageRes(
      id: id,
      name: name,
    );
  }

  LanguageRes fromJson(Map<String, Object?> json) {
    return LanguageRes.fromJson(json);
  }
}

/// @nodoc
const $LanguageRes = _$LanguageResTearOff();

/// @nodoc
mixin _$LanguageRes {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageResCopyWith<LanguageRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageResCopyWith<$Res> {
  factory $LanguageResCopyWith(
          LanguageRes value, $Res Function(LanguageRes) then) =
      _$LanguageResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class _$LanguageResCopyWithImpl<$Res> implements $LanguageResCopyWith<$Res> {
  _$LanguageResCopyWithImpl(this._value, this._then);

  final LanguageRes _value;
  // ignore: unused_field
  final $Res Function(LanguageRes) _then;

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
abstract class _$LanguageResCopyWith<$Res>
    implements $LanguageResCopyWith<$Res> {
  factory _$LanguageResCopyWith(
          _LanguageRes value, $Res Function(_LanguageRes) then) =
      __$LanguageResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class __$LanguageResCopyWithImpl<$Res> extends _$LanguageResCopyWithImpl<$Res>
    implements _$LanguageResCopyWith<$Res> {
  __$LanguageResCopyWithImpl(
      _LanguageRes _value, $Res Function(_LanguageRes) _then)
      : super(_value, (v) => _then(v as _LanguageRes));

  @override
  _LanguageRes get _value => super._value as _LanguageRes;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_LanguageRes(
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
class _$_LanguageRes extends _LanguageRes {
  const _$_LanguageRes(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'name', defaultValue: '') required this.name})
      : super._();

  factory _$_LanguageRes.fromJson(Map<String, dynamic> json) =>
      _$$_LanguageResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;

  @override
  String toString() {
    return 'LanguageRes(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LanguageRes &&
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
  _$LanguageResCopyWith<_LanguageRes> get copyWith =>
      __$LanguageResCopyWithImpl<_LanguageRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LanguageResToJson(this);
  }
}

abstract class _LanguageRes extends LanguageRes {
  const factory _LanguageRes(
          {@JsonKey(name: 'id', defaultValue: 0) required int id,
          @JsonKey(name: 'name', defaultValue: '') required String name}) =
      _$_LanguageRes;
  const _LanguageRes._() : super._();

  factory _LanguageRes.fromJson(Map<String, dynamic> json) =
      _$_LanguageRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$LanguageResCopyWith<_LanguageRes> get copyWith =>
      throw _privateConstructorUsedError;
}
