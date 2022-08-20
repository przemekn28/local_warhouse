// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      json['id'] as int,
      json['name'] as String,
      Location.fromJson(json['location'] as Map<String, dynamic>),
      DateTime.parse(json['expiryDate'] as String),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'expiryDate': instance.expiryDate.toIso8601String(),
    };
