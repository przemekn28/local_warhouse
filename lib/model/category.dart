import 'package:json_annotation/json_annotation.dart';

import 'item.dart';
part 'category.g.dart';

@JsonSerializable()
class Category {
  final int id;
  final String name;
  final List<Item> items;

  Category(this.id, this.name, this.items);

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
