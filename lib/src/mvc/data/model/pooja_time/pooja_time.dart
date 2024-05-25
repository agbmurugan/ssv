import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/pooja_time/notes.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/pooja_time/timing.dart';
part 'pooja_time.g.dart';

@immutable
@JsonSerializable()
class PoojaTime {
  const PoojaTime({
    this.notes,
    this.timing,
  });

  final List<Notes>? notes;
  final List<Timing>? timing;
  factory PoojaTime.fromJson(Map<String, dynamic> json) =>
      _$PoojaTimeFromJson(json);
  Map<String, dynamic> toJson() => _$PoojaTimeToJson(this);
}
