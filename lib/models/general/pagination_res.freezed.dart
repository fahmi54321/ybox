// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pagination_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationRes _$PaginationResFromJson(Map<String, dynamic> json) {
  return _PaginationRes.fromJson(json);
}

/// @nodoc
class _$PaginationResTearOff {
  const _$PaginationResTearOff();

  _PaginationRes call(
      {@JsonKey(name: 'last_page', defaultValue: 0) required int lastPage,
      @JsonKey(name: 'per_page', defaultValue: 0) required int perPage,
      @JsonKey(name: 'total', defaultValue: 0) required int total}) {
    return _PaginationRes(
      lastPage: lastPage,
      perPage: perPage,
      total: total,
    );
  }

  PaginationRes fromJson(Map<String, Object?> json) {
    return PaginationRes.fromJson(json);
  }
}

/// @nodoc
const $PaginationRes = _$PaginationResTearOff();

/// @nodoc
mixin _$PaginationRes {
  @JsonKey(name: 'last_page', defaultValue: 0)
  int get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page', defaultValue: 0)
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'total', defaultValue: 0)
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationResCopyWith<PaginationRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationResCopyWith<$Res> {
  factory $PaginationResCopyWith(
          PaginationRes value, $Res Function(PaginationRes) then) =
      _$PaginationResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'last_page', defaultValue: 0) int lastPage,
      @JsonKey(name: 'per_page', defaultValue: 0) int perPage,
      @JsonKey(name: 'total', defaultValue: 0) int total});
}

/// @nodoc
class _$PaginationResCopyWithImpl<$Res>
    implements $PaginationResCopyWith<$Res> {
  _$PaginationResCopyWithImpl(this._value, this._then);

  final PaginationRes _value;
  // ignore: unused_field
  final $Res Function(PaginationRes) _then;

  @override
  $Res call({
    Object? lastPage = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PaginationResCopyWith<$Res>
    implements $PaginationResCopyWith<$Res> {
  factory _$PaginationResCopyWith(
          _PaginationRes value, $Res Function(_PaginationRes) then) =
      __$PaginationResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'last_page', defaultValue: 0) int lastPage,
      @JsonKey(name: 'per_page', defaultValue: 0) int perPage,
      @JsonKey(name: 'total', defaultValue: 0) int total});
}

/// @nodoc
class __$PaginationResCopyWithImpl<$Res>
    extends _$PaginationResCopyWithImpl<$Res>
    implements _$PaginationResCopyWith<$Res> {
  __$PaginationResCopyWithImpl(
      _PaginationRes _value, $Res Function(_PaginationRes) _then)
      : super(_value, (v) => _then(v as _PaginationRes));

  @override
  _PaginationRes get _value => super._value as _PaginationRes;

  @override
  $Res call({
    Object? lastPage = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
  }) {
    return _then(_PaginationRes(
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_PaginationRes extends _PaginationRes {
  const _$_PaginationRes(
      {@JsonKey(name: 'last_page', defaultValue: 0) required this.lastPage,
      @JsonKey(name: 'per_page', defaultValue: 0) required this.perPage,
      @JsonKey(name: 'total', defaultValue: 0) required this.total})
      : super._();

  factory _$_PaginationRes.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationResFromJson(json);

  @override
  @JsonKey(name: 'last_page', defaultValue: 0)
  final int lastPage;
  @override
  @JsonKey(name: 'per_page', defaultValue: 0)
  final int perPage;
  @override
  @JsonKey(name: 'total', defaultValue: 0)
  final int total;

  @override
  String toString() {
    return 'PaginationRes(lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginationRes &&
            const DeepCollectionEquality().equals(other.lastPage, lastPage) &&
            const DeepCollectionEquality().equals(other.perPage, perPage) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lastPage),
      const DeepCollectionEquality().hash(perPage),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$PaginationResCopyWith<_PaginationRes> get copyWith =>
      __$PaginationResCopyWithImpl<_PaginationRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationResToJson(this);
  }
}

abstract class _PaginationRes extends PaginationRes {
  const factory _PaginationRes(
          {@JsonKey(name: 'last_page', defaultValue: 0) required int lastPage,
          @JsonKey(name: 'per_page', defaultValue: 0) required int perPage,
          @JsonKey(name: 'total', defaultValue: 0) required int total}) =
      _$_PaginationRes;
  const _PaginationRes._() : super._();

  factory _PaginationRes.fromJson(Map<String, dynamic> json) =
      _$_PaginationRes.fromJson;

  @override
  @JsonKey(name: 'last_page', defaultValue: 0)
  int get lastPage;
  @override
  @JsonKey(name: 'per_page', defaultValue: 0)
  int get perPage;
  @override
  @JsonKey(name: 'total', defaultValue: 0)
  int get total;
  @override
  @JsonKey(ignore: true)
  _$PaginationResCopyWith<_PaginationRes> get copyWith =>
      throw _privateConstructorUsedError;
}
