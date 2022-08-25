import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

final String tableLocation = 'location';

class LocationFields {
  static final String id = 'id';
  static final String name = 'name';
}

@JsonSerializable()
class Location {
  final int? id;
  final String name;

  Location({this.id, required this.name});

  Location copy({int? id, String? name}) =>
      Location(id: id ?? this.id, name: name ?? this.name);

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  Map<String, Object?> toJson() => _$LocationToJson(this);
}
