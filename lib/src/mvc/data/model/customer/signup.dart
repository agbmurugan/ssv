import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';
part 'signup.g.dart';

@immutable
@JsonSerializable()
class SignUp {
  const SignUp(
      {this.username, this.email, this.ic_number, this.name, this.password});

  final String? username;

  final String? email;
  final String? ic_number;

  final String? name;

  final String? password;

  factory SignUp.fromJson(Map<String, dynamic> json) => _$SignUpFromJson(json);
  Map<String, dynamic> toJson() => _$SignUpToJson(this);

  SignUp copyWith({
    String? username,
    String? email,
    String? name,
    String? password,
    String? ic_number,
  }) {
    return SignUp(
      username: username ?? this.username,
      email: email ?? this.email,
      ic_number: ic_number ?? this.ic_number,
      name: name ?? this.name,
      password: password ?? this.password,
    );
  }
}
