// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'roles_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RolesRes _$RolesResFromJson(Map<String, dynamic> json) {
  return _RolesRes.fromJson(json);
}

/// @nodoc
class _$RolesResTearOff {
  const _$RolesResTearOff();

  _RolesRes call(
      {@JsonKey(name: 'id', defaultValue: 0) required int id,
      @JsonKey(name: 'name', defaultValue: '') required String name}) {
    return _RolesRes(
      id: id,
      name: name,
    );
  }

  RolesRes fromJson(Map<String, Object?> json) {
    return RolesRes.fromJson(json);
  }
}

/// @nodoc
const $RolesRes = _$RolesResTearOff();

/// @nodoc
mixin _$RolesRes {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RolesResCopyWith<RolesRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RolesResCopyWith<$Res> {
  factory $RolesResCopyWith(RolesRes value, $Res Function(RolesRes) then) =
      _$RolesResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class _$RolesResCopyWithImpl<$Res> implements $RolesResCopyWith<$Res> {
  _$RolesResCopyWithImpl(this._value, this._then);

  final RolesRes _value;
  // ignore: unused_field
  final $Res Function(RolesRes) _then;

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
abstract class _$RolesResCopyWith<$Res> implements $RolesResCopyWith<$Res> {
  factory _$RolesResCopyWith(_RolesRes value, $Res Function(_RolesRes) then) =
      __$RolesResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class __$RolesResCopyWithImpl<$Res> extends _$RolesResCopyWithImpl<$Res>
    implements _$RolesResCopyWith<$Res> {
  __$RolesResCopyWithImpl(_RolesRes _value, $Res Function(_RolesRes) _then)
      : super(_value, (v) => _then(v as _RolesRes));

  @override
  _RolesRes get _value => super._value as _RolesRes;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_RolesRes(
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
class _$_RolesRes extends _RolesRes {
  const _$_RolesRes(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'name', defaultValue: '') required this.name})
      : super._();

  factory _$_RolesRes.fromJson(Map<String, dynamic> json) =>
      _$$_RolesResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;

  @override
  String toString() {
    return 'RolesRes(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RolesRes &&
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
  _$RolesResCopyWith<_RolesRes> get copyWith =>
      __$RolesResCopyWithImpl<_RolesRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RolesResToJson(this);
  }
}

abstract class _RolesRes extends RolesRes {
  const factory _RolesRes(
          {@JsonKey(name: 'id', defaultValue: 0) required int id,
          @JsonKey(name: 'name', defaultValue: '') required String name}) =
      _$_RolesRes;
  const _RolesRes._() : super._();

  factory _RolesRes.fromJson(Map<String, dynamic> json) = _$_RolesRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$RolesResCopyWith<_RolesRes> get copyWith =>
      throw _privateConstructorUsedError;
}
