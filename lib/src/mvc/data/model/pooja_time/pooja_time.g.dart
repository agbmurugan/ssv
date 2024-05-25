// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pooja_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PoojaTime _$PoojaTimeFromJson(Map<String, dynamic> json) => PoojaTime(
      notes: (json['notes'] as List<dynamic>?)
          ?.map((e) => Notes.fromJson(e as Map<String, dynamic>))
          .toList(),
      timing: (json['timing'] as List<dynamic>?)
          ?.map((e) => Timing.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PoojaTimeToJson(PoojaTime instance) => <String, dynamic>{
      'notes': instance.notes,
      'timing': instance.timing,
    };
