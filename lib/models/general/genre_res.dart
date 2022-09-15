import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_res.g.dart';

part 'genre_res.freezed.dart';

@freezed
class GenreRes with _$GenreRes {
  const GenreRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory GenreRes({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
  }) = _GenreRes;

  factory GenreRes.fromJson(Map<String, dynamic> json) =>
      _$GenreResFromJson(json);
}
