// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRes _$UserResFromJson(Map<String, dynamic> json) {
  return _UserRes.fromJson(json);
}

/// @nodoc
class _$UserResTearOff {
  const _$UserResTearOff();

  _UserRes call(
      {@JsonKey(name: 'first_name', defaultValue: '') required String firstName,
      @JsonKey(name: 'last_name', defaultValue: '') required String lastName}) {
    return _UserRes(
      firstName: firstName,
      lastName: lastName,
    );
  }

  UserRes fromJson(Map<String, Object?> json) {
    return UserRes.fromJson(json);
  }
}

/// @nodoc
const $UserRes = _$UserResTearOff();

/// @nodoc
mixin _$UserRes {
  @JsonKey(name: 'first_name', defaultValue: '')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name', defaultValue: '')
  String get lastName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResCopyWith<UserRes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResCopyWith<$Res> {
  factory $UserResCopyWith(UserRes value, $Res Function(UserRes) then) =
      _$UserResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'first_name', defaultValue: '') String firstName,
      @JsonKey(name: 'last_name', defaultValue: '') String lastName});
}

/// @nodoc
class _$UserResCopyWithImpl<$Res> implements $UserResCopyWith<$Res> {
  _$UserResCopyWithImpl(this._value, this._then);

  final UserRes _value;
  // ignore: unused_field
  final $Res Function(UserRes) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserResCopyWith<$Res> implements $UserResCopyWith<$Res> {
  factory _$UserResCopyWith(_UserRes value, $Res Function(_UserRes) then) =
      __$UserResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'first_name', defaultValue: '') String firstName,
      @JsonKey(name: 'last_name', defaultValue: '') String lastName});
}

/// @nodoc
class __$UserResCopyWithImpl<$Res> extends _$UserResCopyWithImpl<$Res>
    implements _$UserResCopyWith<$Res> {
  __$UserResCopyWithImpl(_UserRes _value, $Res Function(_UserRes) _then)
      : super(_value, (v) => _then(v as _UserRes));

  @override
  _UserRes get _value => super._value as _UserRes;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_UserRes(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_UserRes extends _UserRes {
  const _$_UserRes(
      {@JsonKey(name: 'first_name', defaultValue: '') required this.firstName,
      @JsonKey(name: 'last_name', defaultValue: '') required this.lastName})
      : super._();

  factory _$_UserRes.fromJson(Map<String, dynamic> json) =>
      _$$_UserResFromJson(json);

  @override
  @JsonKey(name: 'first_name', defaultValue: '')
  final String firstName;
  @override
  @JsonKey(name: 'last_name', defaultValue: '')
  final String lastName;

  @override
  String toString() {
    return 'UserRes(firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserRes &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName));

  @JsonKey(ignore: true)
  @override
  _$UserResCopyWith<_UserRes> get copyWith =>
      __$UserResCopyWithImpl<_UserRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserResToJson(this);
  }
}

abstract class _UserRes extends UserRes {
  const factory _UserRes(
      {@JsonKey(name: 'first_name', defaultValue: '')
          required String firstName,
      @JsonKey(name: 'last_name', defaultValue: '')
          required String lastName}) = _$_UserRes;
  const _UserRes._() : super._();

  factory _UserRes.fromJson(Map<String, dynamic> json) = _$_UserRes.fromJson;

  @override
  @JsonKey(name: 'first_name', defaultValue: '')
  String get firstName;
  @override
  @JsonKey(name: 'last_name', defaultValue: '')
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$UserResCopyWith<_UserRes> get copyWith =>
      throw _privateConstructorUsedError;
}
