import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';
part 'customer.g.dart';

@immutable
@JsonSerializable()
class Customer {
  const Customer(
      {this.username,
      this.role,
      this.email,
      this.ic_number,
      this.name,
      this.siteTitle,
      this.address1,
      this.address2,
      this.city,
      this.postcode,
      this.telephone,
      this.mobile,
      this.gstno,
      this.website,
      this.logo_img});

  final String? username;
  final int? role;
  final String? email;
  final String? ic_number;
  final String? siteTitle;
  final String? name;
  final String? address1;
  final String? address2;
  final String? city;
  final String? postcode;
  final String? telephone;
  final String? mobile;
  final String? gstno;
  final String? website;
  final String? logo_img;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
  Map<String, dynamic> toJson() => _$CustomerToJson(this);

  Customer copyWith({
    String? username,
    int? role,
    String? email,
    String? ic_number,
    String? name,
    String? siteTitle,
    String? address1,
    String? address2,
    String? city,
    String? postcode,
    String? telephone,
    String? mobile,
    String? gstno,
    String? website,
    String? logo_img,
  }) {
    return Customer(
      username: username ?? this.username,
      role: role ?? this.role,
      email: email ?? this.email,
      ic_number: ic_number ?? this.ic_number,
      name: name ?? this.name,
      siteTitle: siteTitle ?? this.siteTitle,
      address1: address1 ?? this.address1,
      address2: address2 ?? this.address2,
      city: city ?? this.city,
      postcode: postcode ?? this.postcode,
      telephone: telephone ?? this.telephone,
      mobile: mobile ?? this.mobile,
      gstno: gstno ?? this.gstno,
      website: website ?? this.website,
      logo_img: logo_img ?? this.logo_img,
    );
  }
}
