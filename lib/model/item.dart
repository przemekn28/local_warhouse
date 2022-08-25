import 'package:json_annotation/json_annotation.dart';
import 'package:local_warhouse/model/location.dart';

part 'item.g.dart';

final String tableItem = 'item';

class ItemFields {
  static final String id = 'id';
  static final String name = 'name';
  static final String location = 'location';
  static final String expityDate = 'expiryDate';
}

@JsonSerializable()
class Item {
  final int id;
  final String name;
  final Location location;
  final DateTime expiryDate;

  Item(this.id, this.name, this.location, this.expiryDate);

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  Map<String, Object?> toJson() => _$ItemToJson(this);
}
