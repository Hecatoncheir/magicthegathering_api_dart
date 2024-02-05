// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foreign_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForeignName _$ForeignNameFromJson(Map<String, dynamic> json) => ForeignName(
      multiverseid: json['multiverseid'] as int?,
      name: json['name'] as String?,
      text: json['text'] as String?,
      type: json['type'] as String?,
      flavor: json['flavor'] as String?,
      language: json['language'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$ForeignNameToJson(ForeignName instance) =>
    <String, dynamic>{
      'multiverseid': instance.multiverseid,
      'name': instance.name,
      'text': instance.text,
      'type': instance.type,
      'flavor': instance.flavor,
      'language': instance.language,
      'imageUrl': instance.imageUrl,
    };
