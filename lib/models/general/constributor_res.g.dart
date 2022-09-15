// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constributor_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConstributorRes _$$_ConstributorResFromJson(Map json) => $checkedCreate(
      r'_$_ConstributorRes',
      json,
      ($checkedConvert) {
        final val = _$_ConstributorRes(
          id: $checkedConvert('id', (v) => v as int? ?? 0),
          name: $checkedConvert('name', (v) => v as String? ?? ''),
          roleId: $checkedConvert('role_id', (v) => v as int? ?? 0),
          share: $checkedConvert('share', (v) => v as int? ?? 0),
          publishingId: $checkedConvert('publishing_id', (v) => v as int? ?? 0),
          roleTrack: $checkedConvert(
              'role_track',
              (v) => v == null
                  ? null
                  : RolesRes.fromJson(Map<String, dynamic>.from(v as Map))),
          publising: $checkedConvert(
              'publising',
              (v) => v == null
                  ? null
                  : PublishingRes.fromJson(
                      Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'roleId': 'role_id',
        'publishingId': 'publishing_id',
        'roleTrack': 'role_track'
      },
    );

Map<String, dynamic> _$$_ConstributorResToJson(_$_ConstributorRes instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'role_id': instance.roleId,
    'share': instance.share,
    'publishing_id': instance.publishingId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('role_track', instance.roleTrack?.toJson());
  writeNotNull('publising', instance.publising?.toJson());
  return val;
}
