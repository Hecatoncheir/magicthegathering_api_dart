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
      id: json['id'] as String?,
      originalText: json['originalText'] as String?,
      originalType: json['originalType'] as String?,
      set: json['set'] as String?,
      setName: json['setName'] as String?,
      artist: json['artist'] as String?,
      number: json['number'] as String?,
      power: json['power'] as String?,
      toughness: json['toughness'] as String?,
      layout: json['layout'] as String?,
      printings: (json['printings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
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
      ligalities: (json['legalities'] as List<dynamic>?)
          ?.map((e) => Legalities.fromJson(e as Map<String, dynamic>))
          .toList(),
      flavor: json['flavor'] as String?,
      language: json['language'] as String?,
      rulings: (json['rulings'] as List<dynamic>?)
          ?.map((e) => Ruling.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastUpdateDateTime: MagicTheGatheringCard._lastUpdateDateTimeFromJson(
          json['updatedDateTime'] as int?),
      cmc: (json['cmc'] as num?)?.toDouble(),
      supertypes: (json['supertypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      subtypes: (json['subtypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      rarity: json['rarity'] as String?,
      isFoil: json['isFoil'] as bool? ?? false,
    );

Map<String, dynamic> _$MagicTheGatheringCardToJson(
        MagicTheGatheringCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'multiverseid': instance.multiverseid,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'colorIdentity':
          instance.colors?.map((e) => _$CardColorEnumMap[e]!).toList(),
      'manaCost': instance.manaCost,
      'cmc': instance.cmc,
      'text': instance.text,
      'originalText': instance.originalText,
      'foreignNames': instance.foreignNames,
      'supertypes': instance.supertypes,
      'type': instance.type,
      'originalType': instance.originalType,
      'subtypes': instance.subtypes,
      'rarity': instance.rarity,
      'set': instance.set,
      'setName': instance.setName,
      'artist': instance.artist,
      'number': instance.number,
      'power': instance.power,
      'toughness': instance.toughness,
      'layout': instance.layout,
      'printings': instance.printings,
      'legalities': instance.ligalities,
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
