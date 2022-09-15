// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginRes _$LoginResFromJson(Map<String, dynamic> json) {
  return _LoginRes.fromJson(json);
}

/// @nodoc
class _$LoginResTearOff {
  const _$LoginResTearOff();

  _LoginRes call(
      {@JsonKey(name: 'message', defaultValue: '')
          required String message,
      @JsonKey(name: 'access_token', defaultValue: '')
          required String access_token,
      @JsonKey(name: 'id', defaultValue: 0)
          required int id,
      @JsonKey(name: 'level', defaultValue: 0)
          required int level}) {
    return _LoginRes(
      message: message,
      access_token: access_token,
      id: id,
      level: level,
    );
  }

  LoginRes fromJson(Map<String, Object?> json) {
    return LoginRes.fromJson(json);
  }
}

/// @nodoc
const $LoginRes = _$LoginResTearOff();

/// @nodoc
mixin _$LoginRes {
  @JsonKey(name: 'message', defaultValue: '')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token', defaultValue: '')
  String get access_token => throw _privateConstructorUsedError;
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'level', defaultValue: 0)
  int get level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResCopyWith<LoginRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResCopyWith<$Res> {
  factory $LoginResCopyWith(LoginRes value, $Res Function(LoginRes) then) =
      _$LoginResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'message', defaultValue: '') String message,
      @JsonKey(name: 'access_token', defaultValue: '') String access_token,
      @JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'level', defaultValue: 0) int level});
}

/// @nodoc
class _$LoginResCopyWithImpl<$Res> implements $LoginResCopyWith<$Res> {
  _$LoginResCopyWithImpl(this._value, this._then);

  final LoginRes _value;
  // ignore: unused_field
  final $Res Function(LoginRes) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? access_token = freezed,
    Object? id = freezed,
    Object? level = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      access_token: access_token == freezed
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$LoginResCopyWith<$Res> implements $LoginResCopyWith<$Res> {
  factory _$LoginResCopyWith(_LoginRes value, $Res Function(_LoginRes) then) =
      __$LoginResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'message', defaultValue: '') String message,
      @JsonKey(name: 'access_token', defaultValue: '') String access_token,
      @JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'level', defaultValue: 0) int level});
}

/// @nodoc
class __$LoginResCopyWithImpl<$Res> extends _$LoginResCopyWithImpl<$Res>
    implements _$LoginResCopyWith<$Res> {
  __$LoginResCopyWithImpl(_LoginRes _value, $Res Function(_LoginRes) _then)
      : super(_value, (v) => _then(v as _LoginRes));

  @override
  _LoginRes get _value => super._value as _LoginRes;

  @override
  $Res call({
    Object? message = freezed,
    Object? access_token = freezed,
    Object? id = freezed,
    Object? level = freezed,
  }) {
    return _then(_LoginRes(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      access_token: access_token == freezed
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_LoginRes extends _LoginRes {
  const _$_LoginRes(
      {@JsonKey(name: 'message', defaultValue: '')
          required this.message,
      @JsonKey(name: 'access_token', defaultValue: '')
          required this.access_token,
      @JsonKey(name: 'id', defaultValue: 0)
          required this.id,
      @JsonKey(name: 'level', defaultValue: 0)
          required this.level})
      : super._();

  factory _$_LoginRes.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResFromJson(json);

  @override
  @JsonKey(name: 'message', defaultValue: '')
  final String message;
  @override
  @JsonKey(name: 'access_token', defaultValue: '')
  final String access_token;
  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'level', defaultValue: 0)
  final int level;

  @override
  String toString() {
    return 'LoginRes(message: $message, access_token: $access_token, id: $id, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginRes &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.access_token, access_token) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.level, level));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(access_token),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(level));

  @JsonKey(ignore: true)
  @override
  _$LoginResCopyWith<_LoginRes> get copyWith =>
      __$LoginResCopyWithImpl<_LoginRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResToJson(this);
  }
}

abstract class _LoginRes extends LoginRes {
  const factory _LoginRes(
      {@JsonKey(name: 'message', defaultValue: '')
          required String message,
      @JsonKey(name: 'access_token', defaultValue: '')
          required String access_token,
      @JsonKey(name: 'id', defaultValue: 0)
          required int id,
      @JsonKey(name: 'level', defaultValue: 0)
          required int level}) = _$_LoginRes;
  const _LoginRes._() : super._();

  factory _LoginRes.fromJson(Map<String, dynamic> json) = _$_LoginRes.fromJson;

  @override
  @JsonKey(name: 'message', defaultValue: '')
  String get message;
  @override
  @JsonKey(name: 'access_token', defaultValue: '')
  String get access_token;
  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'level', defaultValue: 0)
  int get level;
  @override
  @JsonKey(ignore: true)
  _$LoginResCopyWith<_LoginRes> get copyWith =>
      throw _privateConstructorUsedError;
}
