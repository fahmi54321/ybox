import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_res.g.dart';

part 'pagination_res.freezed.dart';

@freezed
class PaginationRes with _$PaginationRes {
  const PaginationRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory PaginationRes({
    @JsonKey(name: 'last_page', defaultValue: 0) required int lastPage,
    @JsonKey(name: 'per_page', defaultValue: 0) required int perPage,
    @JsonKey(name: 'total', defaultValue: 0) required int total,
  }) = _PaginationRes;

  factory PaginationRes.fromJson(Map<String, dynamic> json) =>
      _$PaginationResFromJson(json);
}
