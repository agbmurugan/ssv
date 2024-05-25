// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInData _$SignInDataFromJson(Map<String, dynamic> json) => SignInData(
      status: json['status'] as bool?,
      customer_id: json['customer_id'] as int?,
      customer_login_id: json['customer_login_id'] as int?,
      error_msg: json['error_msg'] as String?,
    );

Map<String, dynamic> _$SignInDataToJson(SignInData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'customer_id': instance.customer_id,
      'customer_login_id': instance.customer_login_id,
      'error_msg': instance.error_msg,
    };
