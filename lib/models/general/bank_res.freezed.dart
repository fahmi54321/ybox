// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bank_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankRes _$BankResFromJson(Map<String, dynamic> json) {
  return _BankRes.fromJson(json);
}

/// @nodoc
class _$BankResTearOff {
  const _$BankResTearOff();

  _BankRes call(
      {@JsonKey(name: 'id', defaultValue: 0) required int id,
      @JsonKey(name: 'name', defaultValue: '') required String name}) {
    return _BankRes(
      id: id,
      name: name,
    );
  }

  BankRes fromJson(Map<String, Object?> json) {
    return BankRes.fromJson(json);
  }
}

/// @nodoc
const $BankRes = _$BankResTearOff();

/// @nodoc
mixin _$BankRes {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankResCopyWith<BankRes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankResCopyWith<$Res> {
  factory $BankResCopyWith(BankRes value, $Res Function(BankRes) then) =
      _$BankResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class _$BankResCopyWithImpl<$Res> implements $BankResCopyWith<$Res> {
  _$BankResCopyWithImpl(this._value, this._then);

  final BankRes _value;
  // ignore: unused_field
  final $Res Function(BankRes) _then;

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
abstract class _$BankResCopyWith<$Res> implements $BankResCopyWith<$Res> {
  factory _$BankResCopyWith(_BankRes value, $Res Function(_BankRes) then) =
      __$BankResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class __$BankResCopyWithImpl<$Res> extends _$BankResCopyWithImpl<$Res>
    implements _$BankResCopyWith<$Res> {
  __$BankResCopyWithImpl(_BankRes _value, $Res Function(_BankRes) _then)
      : super(_value, (v) => _then(v as _BankRes));

  @override
  _BankRes get _value => super._value as _BankRes;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_BankRes(
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
class _$_BankRes extends _BankRes {
  const _$_BankRes(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'name', defaultValue: '') required this.name})
      : super._();

  factory _$_BankRes.fromJson(Map<String, dynamic> json) =>
      _$$_BankResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;

  @override
  String toString() {
    return 'BankRes(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BankRes &&
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
  _$BankResCopyWith<_BankRes> get copyWith =>
      __$BankResCopyWithImpl<_BankRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankResToJson(this);
  }
}

abstract class _BankRes extends BankRes {
  const factory _BankRes(
          {@JsonKey(name: 'id', defaultValue: 0) required int id,
          @JsonKey(name: 'name', defaultValue: '') required String name}) =
      _$_BankRes;
  const _BankRes._() : super._();

  factory _BankRes.fromJson(Map<String, dynamic> json) = _$_BankRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$BankResCopyWith<_BankRes> get copyWith =>
      throw _privateConstructorUsedError;
}
