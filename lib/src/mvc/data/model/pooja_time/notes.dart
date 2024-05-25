import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';
part 'notes.g.dart';

@immutable
@JsonSerializable()
class Notes {
  const Notes(
      {this.id,
      this.name,
      this.value,
     });

  final String? id;
  final String? name;
  final String? value;
  factory Notes.fromJson(Map<String, dynamic> json) => _$NotesFromJson(json);
  Map<String, dynamic> toJson() => _$NotesToJson(this);
}
