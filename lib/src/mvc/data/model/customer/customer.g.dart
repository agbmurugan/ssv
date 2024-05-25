// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      username: json['username'] as String?,
      role: json['role'] as int?,
      email: json['email'] as String?,
      ic_number: json['ic_number'] as String?,
      name: json['name'] as String?,
      siteTitle: json['siteTitle'] as String?,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      postcode: json['postcode'] as String?,
      telephone: json['telephone'] as String?,
      mobile: json['mobile'] as String?,
      gstno: json['gstno'] as String?,
      website: json['website'] as String?,
      logo_img: json['logo_img'] as String?,
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'username': instance.username,
      'role': instance.role,
      'email': instance.email,
      'ic_number': instance.ic_number,
      'siteTitle': instance.siteTitle,
      'name': instance.name,
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'postcode': instance.postcode,
      'telephone': instance.telephone,
      'mobile': instance.mobile,
      'gstno': instance.gstno,
      'website': instance.website,
      'logo_img': instance.logo_img,
    };
