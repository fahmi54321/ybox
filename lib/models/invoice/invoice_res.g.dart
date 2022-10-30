// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvoiceRes _$$_InvoiceResFromJson(Map json) => $checkedCreate(
      r'_$_InvoiceRes',
      json,
      ($checkedConvert) {
        final val = _$_InvoiceRes(
          labelImage: $checkedConvert('label_image', (v) => v as String? ?? ''),
          labelName: $checkedConvert('label_name', (v) => v as String? ?? ''),
          invNo: $checkedConvert('inv_no', (v) => v as int? ?? 0),
          paymentMethod:
              $checkedConvert('payment_method', (v) => v as String? ?? ''),
          accountName:
              $checkedConvert('account_name', (v) => v as String? ?? ''),
          email: $checkedConvert('email', (v) => v as String? ?? ''),
          bank: $checkedConvert('bank', (v) => v as String? ?? ''),
          nameOnBank:
              $checkedConvert('name_on_bank', (v) => v as String? ?? ''),
          noRek: $checkedConvert('no_rek', (v) => v as String? ?? ''),
          invoiceDate:
              $checkedConvert('invoice_date', (v) => v as String? ?? ''),
          invoiceCreate:
              $checkedConvert('invoice_create', (v) => v as String? ?? ''),
          amount: $checkedConvert('amount', (v) => v as String? ?? ''),
          id: $checkedConvert('id', (v) => v as String? ?? ''),
        );
        return val;
      },
      fieldKeyMap: const {
        'labelImage': 'label_image',
        'labelName': 'label_name',
        'invNo': 'inv_no',
        'paymentMethod': 'payment_method',
        'accountName': 'account_name',
        'nameOnBank': 'name_on_bank',
        'noRek': 'no_rek',
        'invoiceDate': 'invoice_date',
        'invoiceCreate': 'invoice_create'
      },
    );

Map<String, dynamic> _$$_InvoiceResToJson(_$_InvoiceRes instance) =>
    <String, dynamic>{
      'label_image': instance.labelImage,
      'label_name': instance.labelName,
      'inv_no': instance.invNo,
      'payment_method': instance.paymentMethod,
      'account_name': instance.accountName,
      'email': instance.email,
      'bank': instance.bank,
      'name_on_bank': instance.nameOnBank,
      'no_rek': instance.noRek,
      'invoice_date': instance.invoiceDate,
      'invoice_create': instance.invoiceCreate,
      'amount': instance.amount,
      'id': instance.id,
    };
