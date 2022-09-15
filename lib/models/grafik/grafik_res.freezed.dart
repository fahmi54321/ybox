// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'grafik_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GrafikRes _$GrafikResFromJson(Map<String, dynamic> json) {
  return _GrafikRes.fromJson(json);
}

/// @nodoc
class _$GrafikResTearOff {
  const _$GrafikResTearOff();

  _GrafikRes call(
      {@JsonKey(name: 'series', defaultValue: [])
          required List<DataSeries> series}) {
    return _GrafikRes(
      series: series,
    );
  }

  GrafikRes fromJson(Map<String, Object?> json) {
    return GrafikRes.fromJson(json);
  }
}

/// @nodoc
const $GrafikRes = _$GrafikResTearOff();

/// @nodoc
mixin _$GrafikRes {
  @JsonKey(name: 'series', defaultValue: [])
  List<DataSeries> get series => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GrafikResCopyWith<GrafikRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrafikResCopyWith<$Res> {
  factory $GrafikResCopyWith(GrafikRes value, $Res Function(GrafikRes) then) =
      _$GrafikResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'series', defaultValue: []) List<DataSeries> series});
}

/// @nodoc
class _$GrafikResCopyWithImpl<$Res> implements $GrafikResCopyWith<$Res> {
  _$GrafikResCopyWithImpl(this._value, this._then);

  final GrafikRes _value;
  // ignore: unused_field
  final $Res Function(GrafikRes) _then;

  @override
  $Res call({
    Object? series = freezed,
  }) {
    return _then(_value.copyWith(
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as List<DataSeries>,
    ));
  }
}

/// @nodoc
abstract class _$GrafikResCopyWith<$Res> implements $GrafikResCopyWith<$Res> {
  factory _$GrafikResCopyWith(
          _GrafikRes value, $Res Function(_GrafikRes) then) =
      __$GrafikResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'series', defaultValue: []) List<DataSeries> series});
}

/// @nodoc
class __$GrafikResCopyWithImpl<$Res> extends _$GrafikResCopyWithImpl<$Res>
    implements _$GrafikResCopyWith<$Res> {
  __$GrafikResCopyWithImpl(_GrafikRes _value, $Res Function(_GrafikRes) _then)
      : super(_value, (v) => _then(v as _GrafikRes));

  @override
  _GrafikRes get _value => super._value as _GrafikRes;

  @override
  $Res call({
    Object? series = freezed,
  }) {
    return _then(_GrafikRes(
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as List<DataSeries>,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_GrafikRes extends _GrafikRes {
  const _$_GrafikRes(
      {@JsonKey(name: 'series', defaultValue: []) required this.series})
      : super._();

  factory _$_GrafikRes.fromJson(Map<String, dynamic> json) =>
      _$$_GrafikResFromJson(json);

  @override
  @JsonKey(name: 'series', defaultValue: [])
  final List<DataSeries> series;

  @override
  String toString() {
    return 'GrafikRes(series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GrafikRes &&
            const DeepCollectionEquality().equals(other.series, series));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(series));

  @JsonKey(ignore: true)
  @override
  _$GrafikResCopyWith<_GrafikRes> get copyWith =>
      __$GrafikResCopyWithImpl<_GrafikRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GrafikResToJson(this);
  }
}

abstract class _GrafikRes extends GrafikRes {
  const factory _GrafikRes(
      {@JsonKey(name: 'series', defaultValue: [])
          required List<DataSeries> series}) = _$_GrafikRes;
  const _GrafikRes._() : super._();

  factory _GrafikRes.fromJson(Map<String, dynamic> json) =
      _$_GrafikRes.fromJson;

  @override
  @JsonKey(name: 'series', defaultValue: [])
  List<DataSeries> get series;
  @override
  @JsonKey(ignore: true)
  _$GrafikResCopyWith<_GrafikRes> get copyWith =>
      throw _privateConstructorUsedError;
}

DataSeries _$DataSeriesFromJson(Map<String, dynamic> json) {
  return _DataSeries.fromJson(json);
}

/// @nodoc
class _$DataSeriesTearOff {
  const _$DataSeriesTearOff();

  _DataSeries call(
      {@JsonKey(name: 'name', defaultValue: '') required String name,
      @JsonKey(name: 'data', defaultValue: []) required List<int> data}) {
    return _DataSeries(
      name: name,
      data: data,
    );
  }

  DataSeries fromJson(Map<String, Object?> json) {
    return DataSeries.fromJson(json);
  }
}

/// @nodoc
const $DataSeries = _$DataSeriesTearOff();

/// @nodoc
mixin _$DataSeries {
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'data', defaultValue: [])
  List<int> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSeriesCopyWith<DataSeries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSeriesCopyWith<$Res> {
  factory $DataSeriesCopyWith(
          DataSeries value, $Res Function(DataSeries) then) =
      _$DataSeriesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'data', defaultValue: []) List<int> data});
}

/// @nodoc
class _$DataSeriesCopyWithImpl<$Res> implements $DataSeriesCopyWith<$Res> {
  _$DataSeriesCopyWithImpl(this._value, this._then);

  final DataSeries _value;
  // ignore: unused_field
  final $Res Function(DataSeries) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$DataSeriesCopyWith<$Res> implements $DataSeriesCopyWith<$Res> {
  factory _$DataSeriesCopyWith(
          _DataSeries value, $Res Function(_DataSeries) then) =
      __$DataSeriesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'data', defaultValue: []) List<int> data});
}

/// @nodoc
class __$DataSeriesCopyWithImpl<$Res> extends _$DataSeriesCopyWithImpl<$Res>
    implements _$DataSeriesCopyWith<$Res> {
  __$DataSeriesCopyWithImpl(
      _DataSeries _value, $Res Function(_DataSeries) _then)
      : super(_value, (v) => _then(v as _DataSeries));

  @override
  _DataSeries get _value => super._value as _DataSeries;

  @override
  $Res call({
    Object? name = freezed,
    Object? data = freezed,
  }) {
    return _then(_DataSeries(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_DataSeries extends _DataSeries {
  const _$_DataSeries(
      {@JsonKey(name: 'name', defaultValue: '') required this.name,
      @JsonKey(name: 'data', defaultValue: []) required this.data})
      : super._();

  factory _$_DataSeries.fromJson(Map<String, dynamic> json) =>
      _$$_DataSeriesFromJson(json);

  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'data', defaultValue: [])
  final List<int> data;

  @override
  String toString() {
    return 'DataSeries(name: $name, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataSeries &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$DataSeriesCopyWith<_DataSeries> get copyWith =>
      __$DataSeriesCopyWithImpl<_DataSeries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataSeriesToJson(this);
  }
}

abstract class _DataSeries extends DataSeries {
  const factory _DataSeries(
          {@JsonKey(name: 'name', defaultValue: '') required String name,
          @JsonKey(name: 'data', defaultValue: []) required List<int> data}) =
      _$_DataSeries;
  const _DataSeries._() : super._();

  factory _DataSeries.fromJson(Map<String, dynamic> json) =
      _$_DataSeries.fromJson;

  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<int> get data;
  @override
  @JsonKey(ignore: true)
  _$DataSeriesCopyWith<_DataSeries> get copyWith =>
      throw _privateConstructorUsedError;
}
