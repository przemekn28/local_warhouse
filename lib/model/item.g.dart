// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      id: json['id'] as int?,
      name: json['name'] as String,
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      expiryDate: DateTime.parse(json['expiryDate'] as String),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'expiryDate': instance.expiryDate.toIso8601String(),
    };
