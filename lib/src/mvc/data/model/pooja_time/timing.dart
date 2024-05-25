import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';
part 'timing.g.dart';

@immutable
@JsonSerializable()
class Timing {
  const Timing({
    this.id,
    this.name,
    this.image,
    this.time,
    this.order,
    this.status,
  });

  final String? id;
  final String? name;
  final String? image;
  final String? time;
  final int? order;
  final String? status;
  factory Timing.fromJson(Map<String, dynamic> json) => _$TimingFromJson(json);

  Map<String, dynamic> toJson() => _$TimingToJson(this);
}
