import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/pooja_time/notes.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/pooja_time/pooja_time.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/pooja_time/timing.dart';
part 'pooja_time_response.g.dart';

@immutable
@JsonSerializable()
class PoojaTimeResponse {
  const PoojaTimeResponse({
    this.en,
    this.ta,
  });

  final PoojaTime? en;
  final PoojaTime? ta;
  factory PoojaTimeResponse.fromJson(Map<String, dynamic> json) =>
      _$PoojaTimeResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PoojaTimeResponseToJson(this);
}
