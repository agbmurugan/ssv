// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';
part 'config.g.dart';

@immutable
@JsonSerializable()
class Config {
  const Config({
    this.android_build,
    this.android_version,
    this.iOS_build,
    this.iOS_version,

  });

  final int? android_build;
  final String? android_version;
  final int? iOS_build;
  final String? iOS_version;
  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
  Map<String, dynamic> toJson() => _$ConfigToJson(this);
}
