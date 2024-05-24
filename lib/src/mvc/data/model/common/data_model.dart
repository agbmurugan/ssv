import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';
part 'data_model.g.dart';

@immutable
@JsonSerializable()
class DataModel {
  const DataModel({this.status, this.error_msg});

  final bool? status;
  final String? error_msg;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}
