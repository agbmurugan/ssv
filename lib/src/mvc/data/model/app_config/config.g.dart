// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Config _$ConfigFromJson(Map<String, dynamic> json) => Config(
      android_build: json['android_build'] as int?,
      android_version: json['android_version'] as String?,
      iOS_build: json['iOS_build'] as int?,
      iOS_version: json['iOS_version'] as String?,
    );

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'android_build': instance.android_build,
      'android_version': instance.android_version,
      'iOS_build': instance.iOS_build,
      'iOS_version': instance.iOS_version,
    };
