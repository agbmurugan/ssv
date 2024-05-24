import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';
part 'response_model.g.dart';

@immutable
@JsonSerializable()
class ResponseModel {
  const ResponseModel({this.success, this.data, this.message});

  final bool? success;
  final dynamic data;
  final String? message;

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseModelToJson(this);
}
