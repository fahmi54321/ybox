// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoice_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvoiceRes _$InvoiceResFromJson(Map<String, dynamic> json) {
  return _InvoiceRes.fromJson(json);
}

/// @nodoc
class _$InvoiceResTearOff {
  const _$InvoiceResTearOff();

  _InvoiceRes call(
      {@JsonKey(name: 'label_image', defaultValue: '')
          required String labelImage,
      @JsonKey(name: 'label_name', defaultValue: '')
          required String labelName,
      @JsonKey(name: 'inv_no', defaultValue: 0)
          required int invNo,
      @JsonKey(name: 'payment_method', defaultValue: '')
          required String paymentMethod,
      @JsonKey(name: 'account_name', defaultValue: '')
          required String accountName,
      @JsonKey(name: 'email', defaultValue: '')
          required String email,
      @JsonKey(name: 'bank', defaultValue: '')
          required String bank,
      @JsonKey(name: 'name_on_bank', defaultValue: '')
          required String nameOnBank,
      @JsonKey(name: 'no_rek', defaultValue: '')
          required String noRek,
      @JsonKey(name: 'invoice_date', defaultValue: '')
          required String invoiceDate,
      @JsonKey(name: 'invoice_create', defaultValue: '')
          required String invoiceCreate,
      @JsonKey(name: 'amount', defaultValue: '')
          required String amount,
      @JsonKey(name: 'id', defaultValue: '')
          required String id}) {
    return _InvoiceRes(
      labelImage: labelImage,
      labelName: labelName,
      invNo: invNo,
      paymentMethod: paymentMethod,
      accountName: accountName,
      email: email,
      bank: bank,
      nameOnBank: nameOnBank,
      noRek: noRek,
      invoiceDate: invoiceDate,
      invoiceCreate: invoiceCreate,
      amount: amount,
      id: id,
    );
  }

  InvoiceRes fromJson(Map<String, Object?> json) {
    return InvoiceRes.fromJson(json);
  }
}

/// @nodoc
const $InvoiceRes = _$InvoiceResTearOff();

/// @nodoc
mixin _$InvoiceRes {
  @JsonKey(name: 'label_image', defaultValue: '')
  String get labelImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'label_name', defaultValue: '')
  String get labelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'inv_no', defaultValue: 0)
  int get invNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method', defaultValue: '')
  String get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_name', defaultValue: '')
  String get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email', defaultValue: '')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank', defaultValue: '')
  String get bank => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_on_bank', defaultValue: '')
  String get nameOnBank => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_rek', defaultValue: '')
  String get noRek => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoice_date', defaultValue: '')
  String get invoiceDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoice_create', defaultValue: '')
  String get invoiceCreate => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount', defaultValue: '')
  String get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceResCopyWith<InvoiceRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceResCopyWith<$Res> {
  factory $InvoiceResCopyWith(
          InvoiceRes value, $Res Function(InvoiceRes) then) =
      _$InvoiceResCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'label_image', defaultValue: '') String labelImage,
      @JsonKey(name: 'label_name', defaultValue: '') String labelName,
      @JsonKey(name: 'inv_no', defaultValue: 0) int invNo,
      @JsonKey(name: 'payment_method', defaultValue: '') String paymentMethod,
      @JsonKey(name: 'account_name', defaultValue: '') String accountName,
      @JsonKey(name: 'email', defaultValue: '') String email,
      @JsonKey(name: 'bank', defaultValue: '') String bank,
      @JsonKey(name: 'name_on_bank', defaultValue: '') String nameOnBank,
      @JsonKey(name: 'no_rek', defaultValue: '') String noRek,
      @JsonKey(name: 'invoice_date', defaultValue: '') String invoiceDate,
      @JsonKey(name: 'invoice_create', defaultValue: '') String invoiceCreate,
      @JsonKey(name: 'amount', defaultValue: '') String amount,
      @JsonKey(name: 'id', defaultValue: '') String id});
}

/// @nodoc
class _$InvoiceResCopyWithImpl<$Res> implements $InvoiceResCopyWith<$Res> {
  _$InvoiceResCopyWithImpl(this._value, this._then);

  final InvoiceRes _value;
  // ignore: unused_field
  final $Res Function(InvoiceRes) _then;

  @override
  $Res call({
    Object? labelImage = freezed,
    Object? labelName = freezed,
    Object? invNo = freezed,
    Object? paymentMethod = freezed,
    Object? accountName = freezed,
    Object? email = freezed,
    Object? bank = freezed,
    Object? nameOnBank = freezed,
    Object? noRek = freezed,
    Object? invoiceDate = freezed,
    Object? invoiceCreate = freezed,
    Object? amount = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      labelImage: labelImage == freezed
          ? _value.labelImage
          : labelImage // ignore: cast_nullable_to_non_nullable
              as String,
      labelName: labelName == freezed
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as String,
      invNo: invNo == freezed
          ? _value.invNo
          : invNo // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      bank: bank == freezed
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String,
      nameOnBank: nameOnBank == freezed
          ? _value.nameOnBank
          : nameOnBank // ignore: cast_nullable_to_non_nullable
              as String,
      noRek: noRek == freezed
          ? _value.noRek
          : noRek // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceDate: invoiceDate == freezed
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceCreate: invoiceCreate == freezed
          ? _value.invoiceCreate
          : invoiceCreate // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InvoiceResCopyWith<$Res> implements $InvoiceResCopyWith<$Res> {
  factory _$InvoiceResCopyWith(
          _InvoiceRes value, $Res Function(_InvoiceRes) then) =
      __$InvoiceResCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'label_image', defaultValue: '') String labelImage,
      @JsonKey(name: 'label_name', defaultValue: '') String labelName,
      @JsonKey(name: 'inv_no', defaultValue: 0) int invNo,
      @JsonKey(name: 'payment_method', defaultValue: '') String paymentMethod,
      @JsonKey(name: 'account_name', defaultValue: '') String accountName,
      @JsonKey(name: 'email', defaultValue: '') String email,
      @JsonKey(name: 'bank', defaultValue: '') String bank,
      @JsonKey(name: 'name_on_bank', defaultValue: '') String nameOnBank,
      @JsonKey(name: 'no_rek', defaultValue: '') String noRek,
      @JsonKey(name: 'invoice_date', defaultValue: '') String invoiceDate,
      @JsonKey(name: 'invoice_create', defaultValue: '') String invoiceCreate,
      @JsonKey(name: 'amount', defaultValue: '') String amount,
      @JsonKey(name: 'id', defaultValue: '') String id});
}

/// @nodoc
class __$InvoiceResCopyWithImpl<$Res> extends _$InvoiceResCopyWithImpl<$Res>
    implements _$InvoiceResCopyWith<$Res> {
  __$InvoiceResCopyWithImpl(
      _InvoiceRes _value, $Res Function(_InvoiceRes) _then)
      : super(_value, (v) => _then(v as _InvoiceRes));

  @override
  _InvoiceRes get _value => super._value as _InvoiceRes;

  @override
  $Res call({
    Object? labelImage = freezed,
    Object? labelName = freezed,
    Object? invNo = freezed,
    Object? paymentMethod = freezed,
    Object? accountName = freezed,
    Object? email = freezed,
    Object? bank = freezed,
    Object? nameOnBank = freezed,
    Object? noRek = freezed,
    Object? invoiceDate = freezed,
    Object? invoiceCreate = freezed,
    Object? amount = freezed,
    Object? id = freezed,
  }) {
    return _then(_InvoiceRes(
      labelImage: labelImage == freezed
          ? _value.labelImage
          : labelImage // ignore: cast_nullable_to_non_nullable
              as String,
      labelName: labelName == freezed
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as String,
      invNo: invNo == freezed
          ? _value.invNo
          : invNo // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      bank: bank == freezed
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String,
      nameOnBank: nameOnBank == freezed
          ? _value.nameOnBank
          : nameOnBank // ignore: cast_nullable_to_non_nullable
              as String,
      noRek: noRek == freezed
          ? _value.noRek
          : noRek // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceDate: invoiceDate == freezed
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceCreate: invoiceCreate == freezed
          ? _value.invoiceCreate
          : invoiceCreate // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_InvoiceRes extends _InvoiceRes {
  const _$_InvoiceRes(
      {@JsonKey(name: 'label_image', defaultValue: '')
          required this.labelImage,
      @JsonKey(name: 'label_name', defaultValue: '')
          required this.labelName,
      @JsonKey(name: 'inv_no', defaultValue: 0)
          required this.invNo,
      @JsonKey(name: 'payment_method', defaultValue: '')
          required this.paymentMethod,
      @JsonKey(name: 'account_name', defaultValue: '')
          required this.accountName,
      @JsonKey(name: 'email', defaultValue: '')
          required this.email,
      @JsonKey(name: 'bank', defaultValue: '')
          required this.bank,
      @JsonKey(name: 'name_on_bank', defaultValue: '')
          required this.nameOnBank,
      @JsonKey(name: 'no_rek', defaultValue: '')
          required this.noRek,
      @JsonKey(name: 'invoice_date', defaultValue: '')
          required this.invoiceDate,
      @JsonKey(name: 'invoice_create', defaultValue: '')
          required this.invoiceCreate,
      @JsonKey(name: 'amount', defaultValue: '')
          required this.amount,
      @JsonKey(name: 'id', defaultValue: '')
          required this.id})
      : super._();

  factory _$_InvoiceRes.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceResFromJson(json);

  @override
  @JsonKey(name: 'label_image', defaultValue: '')
  final String labelImage;
  @override
  @JsonKey(name: 'label_name', defaultValue: '')
  final String labelName;
  @override
  @JsonKey(name: 'inv_no', defaultValue: 0)
  final int invNo;
  @override
  @JsonKey(name: 'payment_method', defaultValue: '')
  final String paymentMethod;
  @override
  @JsonKey(name: 'account_name', defaultValue: '')
  final String accountName;
  @override
  @JsonKey(name: 'email', defaultValue: '')
  final String email;
  @override
  @JsonKey(name: 'bank', defaultValue: '')
  final String bank;
  @override
  @JsonKey(name: 'name_on_bank', defaultValue: '')
  final String nameOnBank;
  @override
  @JsonKey(name: 'no_rek', defaultValue: '')
  final String noRek;
  @override
  @JsonKey(name: 'invoice_date', defaultValue: '')
  final String invoiceDate;
  @override
  @JsonKey(name: 'invoice_create', defaultValue: '')
  final String invoiceCreate;
  @override
  @JsonKey(name: 'amount', defaultValue: '')
  final String amount;
  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String id;

  @override
  String toString() {
    return 'InvoiceRes(labelImage: $labelImage, labelName: $labelName, invNo: $invNo, paymentMethod: $paymentMethod, accountName: $accountName, email: $email, bank: $bank, nameOnBank: $nameOnBank, noRek: $noRek, invoiceDate: $invoiceDate, invoiceCreate: $invoiceCreate, amount: $amount, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvoiceRes &&
            const DeepCollectionEquality()
                .equals(other.labelImage, labelImage) &&
            const DeepCollectionEquality().equals(other.labelName, labelName) &&
            const DeepCollectionEquality().equals(other.invNo, invNo) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod) &&
            const DeepCollectionEquality()
                .equals(other.accountName, accountName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.bank, bank) &&
            const DeepCollectionEquality()
                .equals(other.nameOnBank, nameOnBank) &&
            const DeepCollectionEquality().equals(other.noRek, noRek) &&
            const DeepCollectionEquality()
                .equals(other.invoiceDate, invoiceDate) &&
            const DeepCollectionEquality()
                .equals(other.invoiceCreate, invoiceCreate) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(labelImage),
      const DeepCollectionEquality().hash(labelName),
      const DeepCollectionEquality().hash(invNo),
      const DeepCollectionEquality().hash(paymentMethod),
      const DeepCollectionEquality().hash(accountName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(bank),
      const DeepCollectionEquality().hash(nameOnBank),
      const DeepCollectionEquality().hash(noRek),
      const DeepCollectionEquality().hash(invoiceDate),
      const DeepCollectionEquality().hash(invoiceCreate),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$InvoiceResCopyWith<_InvoiceRes> get copyWith =>
      __$InvoiceResCopyWithImpl<_InvoiceRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceResToJson(this);
  }
}

abstract class _InvoiceRes extends InvoiceRes {
  const factory _InvoiceRes(
      {@JsonKey(name: 'label_image', defaultValue: '')
          required String labelImage,
      @JsonKey(name: 'label_name', defaultValue: '')
          required String labelName,
      @JsonKey(name: 'inv_no', defaultValue: 0)
          required int invNo,
      @JsonKey(name: 'payment_method', defaultValue: '')
          required String paymentMethod,
      @JsonKey(name: 'account_name', defaultValue: '')
          required String accountName,
      @JsonKey(name: 'email', defaultValue: '')
          required String email,
      @JsonKey(name: 'bank', defaultValue: '')
          required String bank,
      @JsonKey(name: 'name_on_bank', defaultValue: '')
          required String nameOnBank,
      @JsonKey(name: 'no_rek', defaultValue: '')
          required String noRek,
      @JsonKey(name: 'invoice_date', defaultValue: '')
          required String invoiceDate,
      @JsonKey(name: 'invoice_create', defaultValue: '')
          required String invoiceCreate,
      @JsonKey(name: 'amount', defaultValue: '')
          required String amount,
      @JsonKey(name: 'id', defaultValue: '')
          required String id}) = _$_InvoiceRes;
  const _InvoiceRes._() : super._();

  factory _InvoiceRes.fromJson(Map<String, dynamic> json) =
      _$_InvoiceRes.fromJson;

  @override
  @JsonKey(name: 'label_image', defaultValue: '')
  String get labelImage;
  @override
  @JsonKey(name: 'label_name', defaultValue: '')
  String get labelName;
  @override
  @JsonKey(name: 'inv_no', defaultValue: 0)
  int get invNo;
  @override
  @JsonKey(name: 'payment_method', defaultValue: '')
  String get paymentMethod;
  @override
  @JsonKey(name: 'account_name', defaultValue: '')
  String get accountName;
  @override
  @JsonKey(name: 'email', defaultValue: '')
  String get email;
  @override
  @JsonKey(name: 'bank', defaultValue: '')
  String get bank;
  @override
  @JsonKey(name: 'name_on_bank', defaultValue: '')
  String get nameOnBank;
  @override
  @JsonKey(name: 'no_rek', defaultValue: '')
  String get noRek;
  @override
  @JsonKey(name: 'invoice_date', defaultValue: '')
  String get invoiceDate;
  @override
  @JsonKey(name: 'invoice_create', defaultValue: '')
  String get invoiceCreate;
  @override
  @JsonKey(name: 'amount', defaultValue: '')
  String get amount;
  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$InvoiceResCopyWith<_InvoiceRes> get copyWith =>
      throw _privateConstructorUsedError;
}
