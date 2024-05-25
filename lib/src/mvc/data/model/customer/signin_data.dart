import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';
part 'signin_data.g.dart';

@immutable
@JsonSerializable()
class SignInData {
  const SignInData( {this.status, this.customer_id, this.customer_login_id, this.error_msg});

  final bool? status;
  final int? customer_id;
  final int? customer_login_id;
  final String? error_msg;

  factory SignInData.fromJson(Map<String, dynamic> json) =>
      _$SignInDataFromJson(json);
  Map<String, dynamic> toJson() => _$SignInDataToJson(this);
}
