import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

final String tableLocation = 'location';

@JsonSerializable()
class Location {
  final int id;
  final String name;

  Location(this.id, this.name);

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
