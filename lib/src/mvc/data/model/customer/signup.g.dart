// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUp _$SignUpFromJson(Map<String, dynamic> json) => SignUp(
      username: json['username'] as String?,
      email: json['email'] as String?,
      ic_number: json['ic_number'] as String?,
      name: json['name'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$SignUpToJson(SignUp instance) => <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'ic_number': instance.ic_number,
      'name': instance.name,
      'password': instance.password,
    };
