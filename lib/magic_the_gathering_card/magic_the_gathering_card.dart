import 'package:json_annotation/json_annotation.dart';

import 'card_color.dart';
import 'foreign_name.dart';
import 'ruling.dart';
import 'legalities.dart';

export 'card_color.dart';
export 'foreign_name.dart';
export 'ruling.dart';
export 'legalities.dart';

part 'magic_the_gathering_card.g.dart';

@JsonSerializable()
class MagicTheGatheringCard {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(fromJson: _multiverseidFromJson, name: 'multiverseid')
  final int? multiverseid;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'imageUrl')
  final String? imageUrl;

  @JsonKey(name: 'colorIdentity')
  final List<CardColor>? colors;

  @JsonKey(name: 'manaCost')
  final String? manaCost;

  @JsonKey(name: 'cmc')
  final double? cmc;

  @JsonKey(name: 'text')
  final String? text;

  @JsonKey(name: 'originalText')
  final String? originalText;

  @JsonKey(name: 'foreignNames')
  List<ForeignName>? foreignNames;

  @JsonKey(name: 'supertypes')
  final List<String>? supertypes;

  @JsonKey(name: 'type')
  final String? type;

  @JsonKey(name: 'originalType')
  final String? originalType;

  @JsonKey(name: 'subtypes')
  final List<String>? subtypes;

  @JsonKey(name: 'rarity')
  final String? rarity;

  @JsonKey(name: 'set')
  final String? set;

  @JsonKey(name: 'setName')
  final String? setName;

  @JsonKey(name: 'artist')
  final String? artist;

  @JsonKey(name: 'number')
  final String? number;

  @JsonKey(name: 'power')
  final String? power;

  @JsonKey(name: 'toughness')
  final String? toughness;

  @JsonKey(name: 'layout')
  final String? layout;

  @JsonKey(name: 'printings')
  final List<String>? printings;

  @JsonKey(name: 'legalities')
  final List<Legalities>? ligalities;

  @JsonKey(name: 'flavor')
  final String? flavor;

  @JsonKey(name: 'language')
  final String? language;

  @JsonKey(name: 'rulings')
  final List<Ruling>? rulings;

  bool isFoil;

  @JsonKey(
    fromJson: _lastUpdateDateTimeFromJson,
    toJson: _lastUpdateDateTimeToJson,
    name: 'updatedDateTime',
  )
  DateTime? lastUpdateDateTime;

  String get cardUrl =>
      'https://gatherer.wizards.com/Pages/Card/Details.aspx?multiverseid=$multiverseid';

  MagicTheGatheringCard({
    required this.multiverseid,
    this.id,
    this.originalText,
    this.originalType,
    this.set,
    this.setName,
    this.artist,
    this.number,
    this.power,
    this.toughness,
    this.layout,
    this.printings,
    this.name,
    this.imageUrl,
    this.colors,
    this.manaCost,
    this.text,
    this.foreignNames,
    this.type,
    this.ligalities,
    this.flavor,
    this.language,
    this.rulings,
    this.lastUpdateDateTime,
    this.cmc,
    this.supertypes,
    this.subtypes,
    this.rarity,
    this.isFoil = false,
  });

  factory MagicTheGatheringCard.fromJson(Map<String, dynamic> json) =>
      _$MagicTheGatheringCardFromJson(json);

  Map<String, dynamic> toJson() => _$MagicTheGatheringCardToJson(this);

  static _multiverseidFromJson(id) {
    return int.tryParse(id.toString());
  }

  static _lastUpdateDateTimeFromJson(int? milliseconds) {
    if (milliseconds == null) return null;

    return DateTime.fromMillisecondsSinceEpoch(milliseconds);
  }

  static _lastUpdateDateTimeToJson(DateTime? dateTime) {
    return dateTime?.millisecondsSinceEpoch;
  }
}
