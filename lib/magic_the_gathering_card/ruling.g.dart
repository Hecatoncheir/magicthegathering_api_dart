// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ruling.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ruling _$RulingFromJson(Map<String, dynamic> json) => Ruling(
      date: DateTime.parse(json['date'] as String),
      text: json['text'] as String,
    );

Map<String, dynamic> _$RulingToJson(Ruling instance) => <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'text': instance.text,
    };
