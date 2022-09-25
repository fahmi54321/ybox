// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'label_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LabelRes _$LabelResFromJson(Map<String, dynamic> json) {
  return _LabelRes.fromJson(json);
}

/// @nodoc
class _$LabelResTearOff {
  const _$LabelResTearOff();

  _LabelRes call(
      {@JsonKey(name: 'id', defaultValue: 0) required int id,
      @JsonKey(name: 'nama', defaultValue: '') required String nama,
      @JsonKey(name: 'label', defaultValue: 0) required int labelCode}) {
    return _LabelRes(
      id: id,
      nama: nama,
      labelCode: labelCode,
    );
  }

  LabelRes fromJson(Map<String, Object?> json) {
    return LabelRes.fromJson(json);
  }
}

/// @nodoc
const $LabelRes = _$LabelResTearOff();

/// @nodoc
mixin _$LabelRes {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama', defaultValue: '')
  String get nama => throw _privateConstructorUsedError;
  @JsonKey(name: 'label', defaultValue: 0)
  int get labelCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LabelResCopyWith<LabelRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelResCopyWith<$Res> {
  factory $LabelResCopyWith(LabelRes value, $Res Function(LabelRes) then) =
      _$LabelResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'nama', defaultValue: '') String nama,
      @JsonKey(name: 'label', defaultValue: 0) int labelCode});
}

/// @nodoc
class _$LabelResCopyWithImpl<$Res> implements $LabelResCopyWith<$Res> {
  _$LabelResCopyWithImpl(this._value, this._then);

  final LabelRes _value;
  // ignore: unused_field
  final $Res Function(LabelRes) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? labelCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      labelCode: labelCode == freezed
          ? _value.labelCode
          : labelCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$LabelResCopyWith<$Res> implements $LabelResCopyWith<$Res> {
  factory _$LabelResCopyWith(_LabelRes value, $Res Function(_LabelRes) then) =
      __$LabelResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'nama', defaultValue: '') String nama,
      @JsonKey(name: 'label', defaultValue: 0) int labelCode});
}

/// @nodoc
class __$LabelResCopyWithImpl<$Res> extends _$LabelResCopyWithImpl<$Res>
    implements _$LabelResCopyWith<$Res> {
  __$LabelResCopyWithImpl(_LabelRes _value, $Res Function(_LabelRes) _then)
      : super(_value, (v) => _then(v as _LabelRes));

  @override
  _LabelRes get _value => super._value as _LabelRes;

  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? labelCode = freezed,
  }) {
    return _then(_LabelRes(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      labelCode: labelCode == freezed
          ? _value.labelCode
          : labelCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_LabelRes extends _LabelRes {
  const _$_LabelRes(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'nama', defaultValue: '') required this.nama,
      @JsonKey(name: 'label', defaultValue: 0) required this.labelCode})
      : super._();

  factory _$_LabelRes.fromJson(Map<String, dynamic> json) =>
      _$$_LabelResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'nama', defaultValue: '')
  final String nama;
  @override
  @JsonKey(name: 'label', defaultValue: 0)
  final int labelCode;

  @override
  String toString() {
    return 'LabelRes(id: $id, nama: $nama, labelCode: $labelCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LabelRes &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.nama, nama) &&
            const DeepCollectionEquality().equals(other.labelCode, labelCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nama),
      const DeepCollectionEquality().hash(labelCode));

  @JsonKey(ignore: true)
  @override
  _$LabelResCopyWith<_LabelRes> get copyWith =>
      __$LabelResCopyWithImpl<_LabelRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LabelResToJson(this);
  }
}

abstract class _LabelRes extends LabelRes {
  const factory _LabelRes(
          {@JsonKey(name: 'id', defaultValue: 0) required int id,
          @JsonKey(name: 'nama', defaultValue: '') required String nama,
          @JsonKey(name: 'label', defaultValue: 0) required int labelCode}) =
      _$_LabelRes;
  const _LabelRes._() : super._();

  factory _LabelRes.fromJson(Map<String, dynamic> json) = _$_LabelRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'nama', defaultValue: '')
  String get nama;
  @override
  @JsonKey(name: 'label', defaultValue: 0)
  int get labelCode;
  @override
  @JsonKey(ignore: true)
  _$LabelResCopyWith<_LabelRes> get copyWith =>
      throw _privateConstructorUsedError;
}
