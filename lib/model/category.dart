import 'package:json_annotation/json_annotation.dart';

import 'item.dart';
part 'category.g.dart';

final String tableCategory = 'category';

class CategoryFields {
  static final String id = 'id';
  static final String name = 'name';
  static final String items = 'items';
}

@JsonSerializable()
class Category {
  final int? id;
  final String name;
  final List<Item> items;

  const Category({this.id, required this.name, required this.items});

  Category copy({
    int? id,
    String? name,
    List<Item>? items,
  }) =>
      Category(
          id: id ?? this.id,
          name: name ?? this.name,
          items: items ?? this.items);

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
  Map<String, Object?> toJson() => _$CategoryToJson(this);
}
