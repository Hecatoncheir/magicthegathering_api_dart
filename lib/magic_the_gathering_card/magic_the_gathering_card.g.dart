// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'magic_the_gathering_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MagicTheGatheringCard _$MagicTheGatheringCardFromJson(
        Map<String, dynamic> json) =>
    MagicTheGatheringCard(
      multiverseid:
          MagicTheGatheringCard._multiverseidFromJson(json['multiverseid']),
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      colors: (json['colorIdentity'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$CardColorEnumMap, e))
          .toList(),
      manaCost: json['manaCost'] as String?,
      text: json['text'] as String?,
      foreignNames: (json['foreignNames'] as List<dynamic>?)
          ?.map((e) => ForeignName.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String?,
      flavor: json['flavor'] as String?,
      language: json['language'] as String?,
      rulings: (json['rulings'] as List<dynamic>?)
          ?.map((e) => Ruling.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastUpdateDateTime: MagicTheGatheringCard._lastUpdateDateTimeFromJson(
          json['updatedDateTime'] as int?),
      isFoil: json['isFoil'] as bool? ?? false,
    );

Map<String, dynamic> _$MagicTheGatheringCardToJson(
        MagicTheGatheringCard instance) =>
    <String, dynamic>{
      'multiverseid': instance.multiverseid,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'colorIdentity':
          instance.colors?.map((e) => _$CardColorEnumMap[e]).toList(),
      'manaCost': instance.manaCost,
      'text': instance.text,
      'foreignNames': instance.foreignNames,
      'type': instance.type,
      'flavor': instance.flavor,
      'language': instance.language,
      'rulings': instance.rulings,
      'isFoil': instance.isFoil,
      'updatedDateTime': MagicTheGatheringCard._lastUpdateDateTimeToJson(
          instance.lastUpdateDateTime),
    };

const _$CardColorEnumMap = {
  CardColor.White: 'W',
  CardColor.Black: 'B',
  CardColor.Red: 'R',
  CardColor.Blue: 'U',
  CardColor.Green: 'G',
  CardColor.NoColor: 'NoColor',
};
