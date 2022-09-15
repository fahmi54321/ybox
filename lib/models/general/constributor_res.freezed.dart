// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'constributor_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConstributorRes _$ConstributorResFromJson(Map<String, dynamic> json) {
  return _ConstributorRes.fromJson(json);
}

/// @nodoc
class _$ConstributorResTearOff {
  const _$ConstributorResTearOff();

  _ConstributorRes call(
      {@JsonKey(name: 'id', defaultValue: 0)
          required int id,
      @JsonKey(name: 'name', defaultValue: '')
          required String name,
      @JsonKey(name: 'role_id', defaultValue: 0)
          required int roleId,
      @JsonKey(name: 'share', defaultValue: 0)
          required int share,
      @JsonKey(name: 'publishing_id', defaultValue: 0)
          required int publishingId,
      @JsonKey(name: 'role_track')
          RolesRes? roleTrack,
      @JsonKey(name: 'publising')
          PublishingRes? publising}) {
    return _ConstributorRes(
      id: id,
      name: name,
      roleId: roleId,
      share: share,
      publishingId: publishingId,
      roleTrack: roleTrack,
      publising: publising,
    );
  }

  ConstributorRes fromJson(Map<String, Object?> json) {
    return ConstributorRes.fromJson(json);
  }
}

/// @nodoc
const $ConstributorRes = _$ConstributorResTearOff();

/// @nodoc
mixin _$ConstributorRes {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'role_id', defaultValue: 0)
  int get roleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'share', defaultValue: 0)
  int get share => throw _privateConstructorUsedError;
  @JsonKey(name: 'publishing_id', defaultValue: 0)
  int get publishingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'role_track')
  RolesRes? get roleTrack => throw _privateConstructorUsedError;
  @JsonKey(name: 'publising')
  PublishingRes? get publising => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConstributorResCopyWith<ConstributorRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConstributorResCopyWith<$Res> {
  factory $ConstributorResCopyWith(
          ConstributorRes value, $Res Function(ConstributorRes) then) =
      _$ConstributorResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'role_id', defaultValue: 0) int roleId,
      @JsonKey(name: 'share', defaultValue: 0) int share,
      @JsonKey(name: 'publishing_id', defaultValue: 0) int publishingId,
      @JsonKey(name: 'role_track') RolesRes? roleTrack,
      @JsonKey(name: 'publising') PublishingRes? publising});

  $RolesResCopyWith<$Res>? get roleTrack;
  $PublishingResCopyWith<$Res>? get publising;
}

/// @nodoc
class _$ConstributorResCopyWithImpl<$Res>
    implements $ConstributorResCopyWith<$Res> {
  _$ConstributorResCopyWithImpl(this._value, this._then);

  final ConstributorRes _value;
  // ignore: unused_field
  final $Res Function(ConstributorRes) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? roleId = freezed,
    Object? share = freezed,
    Object? publishingId = freezed,
    Object? roleTrack = freezed,
    Object? publising = freezed,
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
      roleId: roleId == freezed
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      share: share == freezed
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as int,
      publishingId: publishingId == freezed
          ? _value.publishingId
          : publishingId // ignore: cast_nullable_to_non_nullable
              as int,
      roleTrack: roleTrack == freezed
          ? _value.roleTrack
          : roleTrack // ignore: cast_nullable_to_non_nullable
              as RolesRes?,
      publising: publising == freezed
          ? _value.publising
          : publising // ignore: cast_nullable_to_non_nullable
              as PublishingRes?,
    ));
  }

  @override
  $RolesResCopyWith<$Res>? get roleTrack {
    if (_value.roleTrack == null) {
      return null;
    }

    return $RolesResCopyWith<$Res>(_value.roleTrack!, (value) {
      return _then(_value.copyWith(roleTrack: value));
    });
  }

  @override
  $PublishingResCopyWith<$Res>? get publising {
    if (_value.publising == null) {
      return null;
    }

    return $PublishingResCopyWith<$Res>(_value.publising!, (value) {
      return _then(_value.copyWith(publising: value));
    });
  }
}

/// @nodoc
abstract class _$ConstributorResCopyWith<$Res>
    implements $ConstributorResCopyWith<$Res> {
  factory _$ConstributorResCopyWith(
          _ConstributorRes value, $Res Function(_ConstributorRes) then) =
      __$ConstributorResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'role_id', defaultValue: 0) int roleId,
      @JsonKey(name: 'share', defaultValue: 0) int share,
      @JsonKey(name: 'publishing_id', defaultValue: 0) int publishingId,
      @JsonKey(name: 'role_track') RolesRes? roleTrack,
      @JsonKey(name: 'publising') PublishingRes? publising});

  @override
  $RolesResCopyWith<$Res>? get roleTrack;
  @override
  $PublishingResCopyWith<$Res>? get publising;
}

/// @nodoc
class __$ConstributorResCopyWithImpl<$Res>
    extends _$ConstributorResCopyWithImpl<$Res>
    implements _$ConstributorResCopyWith<$Res> {
  __$ConstributorResCopyWithImpl(
      _ConstributorRes _value, $Res Function(_ConstributorRes) _then)
      : super(_value, (v) => _then(v as _ConstributorRes));

  @override
  _ConstributorRes get _value => super._value as _ConstributorRes;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? roleId = freezed,
    Object? share = freezed,
    Object? publishingId = freezed,
    Object? roleTrack = freezed,
    Object? publising = freezed,
  }) {
    return _then(_ConstributorRes(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: roleId == freezed
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      share: share == freezed
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as int,
      publishingId: publishingId == freezed
          ? _value.publishingId
          : publishingId // ignore: cast_nullable_to_non_nullable
              as int,
      roleTrack: roleTrack == freezed
          ? _value.roleTrack
          : roleTrack // ignore: cast_nullable_to_non_nullable
              as RolesRes?,
      publising: publising == freezed
          ? _value.publising
          : publising // ignore: cast_nullable_to_non_nullable
              as PublishingRes?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_ConstributorRes extends _ConstributorRes {
  const _$_ConstributorRes(
      {@JsonKey(name: 'id', defaultValue: 0)
          required this.id,
      @JsonKey(name: 'name', defaultValue: '')
          required this.name,
      @JsonKey(name: 'role_id', defaultValue: 0)
          required this.roleId,
      @JsonKey(name: 'share', defaultValue: 0)
          required this.share,
      @JsonKey(name: 'publishing_id', defaultValue: 0)
          required this.publishingId,
      @JsonKey(name: 'role_track')
          this.roleTrack,
      @JsonKey(name: 'publising')
          this.publising})
      : super._();

  factory _$_ConstributorRes.fromJson(Map<String, dynamic> json) =>
      _$$_ConstributorResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'role_id', defaultValue: 0)
  final int roleId;
  @override
  @JsonKey(name: 'share', defaultValue: 0)
  final int share;
  @override
  @JsonKey(name: 'publishing_id', defaultValue: 0)
  final int publishingId;
  @override
  @JsonKey(name: 'role_track')
  final RolesRes? roleTrack;
  @override
  @JsonKey(name: 'publising')
  final PublishingRes? publising;

  @override
  String toString() {
    return 'ConstributorRes(id: $id, name: $name, roleId: $roleId, share: $share, publishingId: $publishingId, roleTrack: $roleTrack, publising: $publising)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConstributorRes &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.roleId, roleId) &&
            const DeepCollectionEquality().equals(other.share, share) &&
            const DeepCollectionEquality()
                .equals(other.publishingId, publishingId) &&
            const DeepCollectionEquality().equals(other.roleTrack, roleTrack) &&
            const DeepCollectionEquality().equals(other.publising, publising));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(roleId),
      const DeepCollectionEquality().hash(share),
      const DeepCollectionEquality().hash(publishingId),
      const DeepCollectionEquality().hash(roleTrack),
      const DeepCollectionEquality().hash(publising));

  @JsonKey(ignore: true)
  @override
  _$ConstributorResCopyWith<_ConstributorRes> get copyWith =>
      __$ConstributorResCopyWithImpl<_ConstributorRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConstributorResToJson(this);
  }
}

abstract class _ConstributorRes extends ConstributorRes {
  const factory _ConstributorRes(
      {@JsonKey(name: 'id', defaultValue: 0)
          required int id,
      @JsonKey(name: 'name', defaultValue: '')
          required String name,
      @JsonKey(name: 'role_id', defaultValue: 0)
          required int roleId,
      @JsonKey(name: 'share', defaultValue: 0)
          required int share,
      @JsonKey(name: 'publishing_id', defaultValue: 0)
          required int publishingId,
      @JsonKey(name: 'role_track')
          RolesRes? roleTrack,
      @JsonKey(name: 'publising')
          PublishingRes? publising}) = _$_ConstributorRes;
  const _ConstributorRes._() : super._();

  factory _ConstributorRes.fromJson(Map<String, dynamic> json) =
      _$_ConstributorRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'role_id', defaultValue: 0)
  int get roleId;
  @override
  @JsonKey(name: 'share', defaultValue: 0)
  int get share;
  @override
  @JsonKey(name: 'publishing_id', defaultValue: 0)
  int get publishingId;
  @override
  @JsonKey(name: 'role_track')
  RolesRes? get roleTrack;
  @override
  @JsonKey(name: 'publising')
  PublishingRes? get publising;
  @override
  @JsonKey(ignore: true)
  _$ConstributorResCopyWith<_ConstributorRes> get copyWith =>
      throw _privateConstructorUsedError;
}
