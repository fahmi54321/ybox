// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'publishing_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PublishingRes _$PublishingResFromJson(Map<String, dynamic> json) {
  return _PublishingRes.fromJson(json);
}

/// @nodoc
class _$PublishingResTearOff {
  const _$PublishingResTearOff();

  _PublishingRes call(
      {@JsonKey(name: 'id', defaultValue: 0) required int id,
      @JsonKey(name: 'name', defaultValue: '') required String name}) {
    return _PublishingRes(
      id: id,
      name: name,
    );
  }

  PublishingRes fromJson(Map<String, Object?> json) {
    return PublishingRes.fromJson(json);
  }
}

/// @nodoc
const $PublishingRes = _$PublishingResTearOff();

/// @nodoc
mixin _$PublishingRes {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublishingResCopyWith<PublishingRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublishingResCopyWith<$Res> {
  factory $PublishingResCopyWith(
          PublishingRes value, $Res Function(PublishingRes) then) =
      _$PublishingResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class _$PublishingResCopyWithImpl<$Res>
    implements $PublishingResCopyWith<$Res> {
  _$PublishingResCopyWithImpl(this._value, this._then);

  final PublishingRes _value;
  // ignore: unused_field
  final $Res Function(PublishingRes) _then;

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
abstract class _$PublishingResCopyWith<$Res>
    implements $PublishingResCopyWith<$Res> {
  factory _$PublishingResCopyWith(
          _PublishingRes value, $Res Function(_PublishingRes) then) =
      __$PublishingResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class __$PublishingResCopyWithImpl<$Res>
    extends _$PublishingResCopyWithImpl<$Res>
    implements _$PublishingResCopyWith<$Res> {
  __$PublishingResCopyWithImpl(
      _PublishingRes _value, $Res Function(_PublishingRes) _then)
      : super(_value, (v) => _then(v as _PublishingRes));

  @override
  _PublishingRes get _value => super._value as _PublishingRes;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_PublishingRes(
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
class _$_PublishingRes extends _PublishingRes {
  const _$_PublishingRes(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'name', defaultValue: '') required this.name})
      : super._();

  factory _$_PublishingRes.fromJson(Map<String, dynamic> json) =>
      _$$_PublishingResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;

  @override
  String toString() {
    return 'PublishingRes(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PublishingRes &&
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
  _$PublishingResCopyWith<_PublishingRes> get copyWith =>
      __$PublishingResCopyWithImpl<_PublishingRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PublishingResToJson(this);
  }
}

abstract class _PublishingRes extends PublishingRes {
  const factory _PublishingRes(
          {@JsonKey(name: 'id', defaultValue: 0) required int id,
          @JsonKey(name: 'name', defaultValue: '') required String name}) =
      _$_PublishingRes;
  const _PublishingRes._() : super._();

  factory _PublishingRes.fromJson(Map<String, dynamic> json) =
      _$_PublishingRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$PublishingResCopyWith<_PublishingRes> get copyWith =>
      throw _privateConstructorUsedError;
}
