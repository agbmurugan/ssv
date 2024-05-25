// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Timing _$TimingFromJson(Map<String, dynamic> json) => Timing(
      id: json['id'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      time: json['time'] as String?,
      order: json['order'] as int?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$TimingToJson(Timing instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'time': instance.time,
      'order': instance.order,
      'status': instance.status,
    };
