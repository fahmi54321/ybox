// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileRes _$ProfileResFromJson(Map<String, dynamic> json) {
  return _ProfileRes.fromJson(json);
}

/// @nodoc
class _$ProfileResTearOff {
  const _$ProfileResTearOff();

  _ProfileRes call(
      {@JsonKey(name: 'id', defaultValue: 0) required int id,
      @JsonKey(name: 'image', defaultValue: '') required String image,
      @JsonKey(name: 'first_name', defaultValue: '') required String firstName,
      @JsonKey(name: 'last_name', defaultValue: '') required String lastName,
      @JsonKey(name: 'level_id', defaultValue: 0) required int levelId}) {
    return _ProfileRes(
      id: id,
      image: image,
      firstName: firstName,
      lastName: lastName,
      levelId: levelId,
    );
  }

  ProfileRes fromJson(Map<String, Object?> json) {
    return ProfileRes.fromJson(json);
  }
}

/// @nodoc
const $ProfileRes = _$ProfileResTearOff();

/// @nodoc
mixin _$ProfileRes {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image', defaultValue: '')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name', defaultValue: '')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name', defaultValue: '')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'level_id', defaultValue: 0)
  int get levelId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileResCopyWith<ProfileRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileResCopyWith<$Res> {
  factory $ProfileResCopyWith(
          ProfileRes value, $Res Function(ProfileRes) then) =
      _$ProfileResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'image', defaultValue: '') String image,
      @JsonKey(name: 'first_name', defaultValue: '') String firstName,
      @JsonKey(name: 'last_name', defaultValue: '') String lastName,
      @JsonKey(name: 'level_id', defaultValue: 0) int levelId});
}

/// @nodoc
class _$ProfileResCopyWithImpl<$Res> implements $ProfileResCopyWith<$Res> {
  _$ProfileResCopyWithImpl(this._value, this._then);

  final ProfileRes _value;
  // ignore: unused_field
  final $Res Function(ProfileRes) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? levelId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      levelId: levelId == freezed
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ProfileResCopyWith<$Res> implements $ProfileResCopyWith<$Res> {
  factory _$ProfileResCopyWith(
          _ProfileRes value, $Res Function(_ProfileRes) then) =
      __$ProfileResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'image', defaultValue: '') String image,
      @JsonKey(name: 'first_name', defaultValue: '') String firstName,
      @JsonKey(name: 'last_name', defaultValue: '') String lastName,
      @JsonKey(name: 'level_id', defaultValue: 0) int levelId});
}

/// @nodoc
class __$ProfileResCopyWithImpl<$Res> extends _$ProfileResCopyWithImpl<$Res>
    implements _$ProfileResCopyWith<$Res> {
  __$ProfileResCopyWithImpl(
      _ProfileRes _value, $Res Function(_ProfileRes) _then)
      : super(_value, (v) => _then(v as _ProfileRes));

  @override
  _ProfileRes get _value => super._value as _ProfileRes;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? levelId = freezed,
  }) {
    return _then(_ProfileRes(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      levelId: levelId == freezed
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_ProfileRes extends _ProfileRes {
  const _$_ProfileRes(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'image', defaultValue: '') required this.image,
      @JsonKey(name: 'first_name', defaultValue: '') required this.firstName,
      @JsonKey(name: 'last_name', defaultValue: '') required this.lastName,
      @JsonKey(name: 'level_id', defaultValue: 0) required this.levelId})
      : super._();

  factory _$_ProfileRes.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @override
  @JsonKey(name: 'first_name', defaultValue: '')
  final String firstName;
  @override
  @JsonKey(name: 'last_name', defaultValue: '')
  final String lastName;
  @override
  @JsonKey(name: 'level_id', defaultValue: 0)
  final int levelId;

  @override
  String toString() {
    return 'ProfileRes(id: $id, image: $image, firstName: $firstName, lastName: $lastName, levelId: $levelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileRes &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.levelId, levelId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(levelId));

  @JsonKey(ignore: true)
  @override
  _$ProfileResCopyWith<_ProfileRes> get copyWith =>
      __$ProfileResCopyWithImpl<_ProfileRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileResToJson(this);
  }
}

abstract class _ProfileRes extends ProfileRes {
  const factory _ProfileRes(
      {@JsonKey(name: 'id', defaultValue: 0)
          required int id,
      @JsonKey(name: 'image', defaultValue: '')
          required String image,
      @JsonKey(name: 'first_name', defaultValue: '')
          required String firstName,
      @JsonKey(name: 'last_name', defaultValue: '')
          required String lastName,
      @JsonKey(name: 'level_id', defaultValue: 0)
          required int levelId}) = _$_ProfileRes;
  const _ProfileRes._() : super._();

  factory _ProfileRes.fromJson(Map<String, dynamic> json) =
      _$_ProfileRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  String get image;
  @override
  @JsonKey(name: 'first_name', defaultValue: '')
  String get firstName;
  @override
  @JsonKey(name: 'last_name', defaultValue: '')
  String get lastName;
  @override
  @JsonKey(name: 'level_id', defaultValue: 0)
  int get levelId;
  @override
  @JsonKey(ignore: true)
  _$ProfileResCopyWith<_ProfileRes> get copyWith =>
      throw _privateConstructorUsedError;
}
