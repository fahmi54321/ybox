// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionRes _$TransactionResFromJson(Map<String, dynamic> json) {
  return _TransactionRes.fromJson(json);
}

/// @nodoc
class _$TransactionResTearOff {
  const _$TransactionResTearOff();

  _TransactionRes call(
      {@JsonKey(name: 'data', defaultValue: [])
          required List<DataTransactionRes> data,
      @JsonKey(name: 'pagination')
          required PaginationRes pagination}) {
    return _TransactionRes(
      data: data,
      pagination: pagination,
    );
  }

  TransactionRes fromJson(Map<String, Object?> json) {
    return TransactionRes.fromJson(json);
  }
}

/// @nodoc
const $TransactionRes = _$TransactionResTearOff();

/// @nodoc
mixin _$TransactionRes {
  @JsonKey(name: 'data', defaultValue: [])
  List<DataTransactionRes> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'pagination')
  PaginationRes get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionResCopyWith<TransactionRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionResCopyWith<$Res> {
  factory $TransactionResCopyWith(
          TransactionRes value, $Res Function(TransactionRes) then) =
      _$TransactionResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<DataTransactionRes> data,
      @JsonKey(name: 'pagination') PaginationRes pagination});

  $PaginationResCopyWith<$Res> get pagination;
}

/// @nodoc
class _$TransactionResCopyWithImpl<$Res>
    implements $TransactionResCopyWith<$Res> {
  _$TransactionResCopyWithImpl(this._value, this._then);

  final TransactionRes _value;
  // ignore: unused_field
  final $Res Function(TransactionRes) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTransactionRes>,
      pagination: pagination == freezed
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationRes,
    ));
  }

  @override
  $PaginationResCopyWith<$Res> get pagination {
    return $PaginationResCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value));
    });
  }
}

/// @nodoc
abstract class _$TransactionResCopyWith<$Res>
    implements $TransactionResCopyWith<$Res> {
  factory _$TransactionResCopyWith(
          _TransactionRes value, $Res Function(_TransactionRes) then) =
      __$TransactionResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<DataTransactionRes> data,
      @JsonKey(name: 'pagination') PaginationRes pagination});

  @override
  $PaginationResCopyWith<$Res> get pagination;
}

/// @nodoc
class __$TransactionResCopyWithImpl<$Res>
    extends _$TransactionResCopyWithImpl<$Res>
    implements _$TransactionResCopyWith<$Res> {
  __$TransactionResCopyWithImpl(
      _TransactionRes _value, $Res Function(_TransactionRes) _then)
      : super(_value, (v) => _then(v as _TransactionRes));

  @override
  _TransactionRes get _value => super._value as _TransactionRes;

  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_TransactionRes(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTransactionRes>,
      pagination: pagination == freezed
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationRes,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_TransactionRes extends _TransactionRes {
  const _$_TransactionRes(
      {@JsonKey(name: 'data', defaultValue: []) required this.data,
      @JsonKey(name: 'pagination') required this.pagination})
      : super._();

  factory _$_TransactionRes.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionResFromJson(json);

  @override
  @JsonKey(name: 'data', defaultValue: [])
  final List<DataTransactionRes> data;
  @override
  @JsonKey(name: 'pagination')
  final PaginationRes pagination;

  @override
  String toString() {
    return 'TransactionRes(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionRes &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality()
                .equals(other.pagination, pagination));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(pagination));

  @JsonKey(ignore: true)
  @override
  _$TransactionResCopyWith<_TransactionRes> get copyWith =>
      __$TransactionResCopyWithImpl<_TransactionRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionResToJson(this);
  }
}

abstract class _TransactionRes extends TransactionRes {
  const factory _TransactionRes(
      {@JsonKey(name: 'data', defaultValue: [])
          required List<DataTransactionRes> data,
      @JsonKey(name: 'pagination')
          required PaginationRes pagination}) = _$_TransactionRes;
  const _TransactionRes._() : super._();

  factory _TransactionRes.fromJson(Map<String, dynamic> json) =
      _$_TransactionRes.fromJson;

  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<DataTransactionRes> get data;
  @override
  @JsonKey(name: 'pagination')
  PaginationRes get pagination;
  @override
  @JsonKey(ignore: true)
  _$TransactionResCopyWith<_TransactionRes> get copyWith =>
      throw _privateConstructorUsedError;
}

DataTransactionRes _$DataTransactionResFromJson(Map<String, dynamic> json) {
  return _DataTransactionRes.fromJson(json);
}

/// @nodoc
class _$DataTransactionResTearOff {
  const _$DataTransactionResTearOff();

  _DataTransactionRes call(
      {@JsonKey(name: 'id', defaultValue: 0)
          required int id,
      @JsonKey(name: 'member', defaultValue: '')
          required String member,
      @JsonKey(name: 'name_on_bank', defaultValue: '')
          required String nameOnBank,
      @JsonKey(name: 'request_date', defaultValue: '')
          required String requestDate,
      @JsonKey(name: 'status', defaultValue: 0)
          required int status,
      @JsonKey(name: 'amount', defaultValue: '')
          required String amount}) {
    return _DataTransactionRes(
      id: id,
      member: member,
      nameOnBank: nameOnBank,
      requestDate: requestDate,
      status: status,
      amount: amount,
    );
  }

  DataTransactionRes fromJson(Map<String, Object?> json) {
    return DataTransactionRes.fromJson(json);
  }
}

/// @nodoc
const $DataTransactionRes = _$DataTransactionResTearOff();

/// @nodoc
mixin _$DataTransactionRes {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'member', defaultValue: '')
  String get member => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_on_bank', defaultValue: '')
  String get nameOnBank => throw _privateConstructorUsedError;
  @JsonKey(name: 'request_date', defaultValue: '')
  String get requestDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', defaultValue: 0)
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount', defaultValue: '')
  String get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataTransactionResCopyWith<DataTransactionRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTransactionResCopyWith<$Res> {
  factory $DataTransactionResCopyWith(
          DataTransactionRes value, $Res Function(DataTransactionRes) then) =
      _$DataTransactionResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'member', defaultValue: '') String member,
      @JsonKey(name: 'name_on_bank', defaultValue: '') String nameOnBank,
      @JsonKey(name: 'request_date', defaultValue: '') String requestDate,
      @JsonKey(name: 'status', defaultValue: 0) int status,
      @JsonKey(name: 'amount', defaultValue: '') String amount});
}

/// @nodoc
class _$DataTransactionResCopyWithImpl<$Res>
    implements $DataTransactionResCopyWith<$Res> {
  _$DataTransactionResCopyWithImpl(this._value, this._then);

  final DataTransactionRes _value;
  // ignore: unused_field
  final $Res Function(DataTransactionRes) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? member = freezed,
    Object? nameOnBank = freezed,
    Object? requestDate = freezed,
    Object? status = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      member: member == freezed
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as String,
      nameOnBank: nameOnBank == freezed
          ? _value.nameOnBank
          : nameOnBank // ignore: cast_nullable_to_non_nullable
              as String,
      requestDate: requestDate == freezed
          ? _value.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DataTransactionResCopyWith<$Res>
    implements $DataTransactionResCopyWith<$Res> {
  factory _$DataTransactionResCopyWith(
          _DataTransactionRes value, $Res Function(_DataTransactionRes) then) =
      __$DataTransactionResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'member', defaultValue: '') String member,
      @JsonKey(name: 'name_on_bank', defaultValue: '') String nameOnBank,
      @JsonKey(name: 'request_date', defaultValue: '') String requestDate,
      @JsonKey(name: 'status', defaultValue: 0) int status,
      @JsonKey(name: 'amount', defaultValue: '') String amount});
}

/// @nodoc
class __$DataTransactionResCopyWithImpl<$Res>
    extends _$DataTransactionResCopyWithImpl<$Res>
    implements _$DataTransactionResCopyWith<$Res> {
  __$DataTransactionResCopyWithImpl(
      _DataTransactionRes _value, $Res Function(_DataTransactionRes) _then)
      : super(_value, (v) => _then(v as _DataTransactionRes));

  @override
  _DataTransactionRes get _value => super._value as _DataTransactionRes;

  @override
  $Res call({
    Object? id = freezed,
    Object? member = freezed,
    Object? nameOnBank = freezed,
    Object? requestDate = freezed,
    Object? status = freezed,
    Object? amount = freezed,
  }) {
    return _then(_DataTransactionRes(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      member: member == freezed
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as String,
      nameOnBank: nameOnBank == freezed
          ? _value.nameOnBank
          : nameOnBank // ignore: cast_nullable_to_non_nullable
              as String,
      requestDate: requestDate == freezed
          ? _value.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_DataTransactionRes extends _DataTransactionRes {
  const _$_DataTransactionRes(
      {@JsonKey(name: 'id', defaultValue: 0)
          required this.id,
      @JsonKey(name: 'member', defaultValue: '')
          required this.member,
      @JsonKey(name: 'name_on_bank', defaultValue: '')
          required this.nameOnBank,
      @JsonKey(name: 'request_date', defaultValue: '')
          required this.requestDate,
      @JsonKey(name: 'status', defaultValue: 0)
          required this.status,
      @JsonKey(name: 'amount', defaultValue: '')
          required this.amount})
      : super._();

  factory _$_DataTransactionRes.fromJson(Map<String, dynamic> json) =>
      _$$_DataTransactionResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'member', defaultValue: '')
  final String member;
  @override
  @JsonKey(name: 'name_on_bank', defaultValue: '')
  final String nameOnBank;
  @override
  @JsonKey(name: 'request_date', defaultValue: '')
  final String requestDate;
  @override
  @JsonKey(name: 'status', defaultValue: 0)
  final int status;
  @override
  @JsonKey(name: 'amount', defaultValue: '')
  final String amount;

  @override
  String toString() {
    return 'DataTransactionRes(id: $id, member: $member, nameOnBank: $nameOnBank, requestDate: $requestDate, status: $status, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataTransactionRes &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.member, member) &&
            const DeepCollectionEquality()
                .equals(other.nameOnBank, nameOnBank) &&
            const DeepCollectionEquality()
                .equals(other.requestDate, requestDate) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(member),
      const DeepCollectionEquality().hash(nameOnBank),
      const DeepCollectionEquality().hash(requestDate),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$DataTransactionResCopyWith<_DataTransactionRes> get copyWith =>
      __$DataTransactionResCopyWithImpl<_DataTransactionRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataTransactionResToJson(this);
  }
}

abstract class _DataTransactionRes extends DataTransactionRes {
  const factory _DataTransactionRes(
      {@JsonKey(name: 'id', defaultValue: 0)
          required int id,
      @JsonKey(name: 'member', defaultValue: '')
          required String member,
      @JsonKey(name: 'name_on_bank', defaultValue: '')
          required String nameOnBank,
      @JsonKey(name: 'request_date', defaultValue: '')
          required String requestDate,
      @JsonKey(name: 'status', defaultValue: 0)
          required int status,
      @JsonKey(name: 'amount', defaultValue: '')
          required String amount}) = _$_DataTransactionRes;
  const _DataTransactionRes._() : super._();

  factory _DataTransactionRes.fromJson(Map<String, dynamic> json) =
      _$_DataTransactionRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'member', defaultValue: '')
  String get member;
  @override
  @JsonKey(name: 'name_on_bank', defaultValue: '')
  String get nameOnBank;
  @override
  @JsonKey(name: 'request_date', defaultValue: '')
  String get requestDate;
  @override
  @JsonKey(name: 'status', defaultValue: 0)
  int get status;
  @override
  @JsonKey(name: 'amount', defaultValue: '')
  String get amount;
  @override
  @JsonKey(ignore: true)
  _$DataTransactionResCopyWith<_DataTransactionRes> get copyWith =>
      throw _privateConstructorUsedError;
}
