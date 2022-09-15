import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_res.g.dart';

part 'bank_res.freezed.dart';

@freezed
class BankRes with _$BankRes {
  const BankRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory BankRes({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
  }) = _BankRes;

  factory BankRes.fromJson(Map<String, dynamic> json) =>
      _$BankResFromJson(json);
}
