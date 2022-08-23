import 'package:json_annotation/json_annotation.dart';
import 'package:local_warhouse/model/location.dart';

part 'item.g.dart';

final String tableItem = 'item';

@JsonSerializable()
class Item {
  final int id;
  final String name;
  final Location location;
  final DateTime expiryDate;

  Item(this.id, this.name, this.location, this.expiryDate);

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
