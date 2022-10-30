import 'package:cloud_storage/models/general/constributor_res.dart';
import 'package:cloud_storage/models/general/label_res.dart';
import 'package:cloud_storage/models/general/language_res.dart';
import 'package:cloud_storage/models/general/pagination_res.dart';
import 'package:cloud_storage/models/general/publishing_res.dart';
import 'package:cloud_storage/models/general/roles_res.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../general/genre_res.dart';
import '../general/user_res.dart';

part 'invoice_res.g.dart';

part 'invoice_res.freezed.dart';

@freezed
class InvoiceRes with _$InvoiceRes {
  const InvoiceRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory InvoiceRes({
    @JsonKey(name: 'label_image', defaultValue: '') required String labelImage,
    @JsonKey(name: 'label_name', defaultValue: '') required String labelName,
    @JsonKey(name: 'inv_no', defaultValue: 0) required int invNo,
    @JsonKey(name: 'payment_method', defaultValue: '') required String paymentMethod,
    @JsonKey(name: 'account_name', defaultValue: '') required String accountName,
    @JsonKey(name: 'email', defaultValue: '') required String email,
    @JsonKey(name: 'bank', defaultValue: '') required String bank,
    @JsonKey(name: 'name_on_bank', defaultValue: '') required String nameOnBank,
    @JsonKey(name: 'no_rek', defaultValue: '') required String noRek,
    @JsonKey(name: 'invoice_date', defaultValue: '') required String invoiceDate,
    @JsonKey(name: 'invoice_create', defaultValue: '') required String invoiceCreate,
    @JsonKey(name: 'amount', defaultValue: '') required String amount,
    @JsonKey(name: 'id', defaultValue: '') required String id,
  }) = _InvoiceRes;

  factory InvoiceRes.fromJson(Map<String, dynamic> json) =>
      _$InvoiceResFromJson(json);
}

