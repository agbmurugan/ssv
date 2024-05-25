// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pooja_time_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PoojaTimeResponse _$PoojaTimeResponseFromJson(Map<String, dynamic> json) =>
    PoojaTimeResponse(
      en: json['en'] == null
          ? null
          : PoojaTime.fromJson(json['en'] as Map<String, dynamic>),
      ta: json['ta'] == null
          ? null
          : PoojaTime.fromJson(json['ta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PoojaTimeResponseToJson(PoojaTimeResponse instance) =>
    <String, dynamic>{
      'en': instance.en,
      'ta': instance.ta,
    };
