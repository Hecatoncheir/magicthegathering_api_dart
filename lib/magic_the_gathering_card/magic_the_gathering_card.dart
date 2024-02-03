import 'package:json_annotation/json_annotation.dart';

import 'card_color.dart';
import 'foreign_name.dart';
import 'ruling.dart';

export 'card_color.dart';
export 'foreign_name.dart';
export 'ruling.dart';

part 'magic_the_gathering_card.g.dart';

@JsonSerializable()
class MagicTheGatheringCard {
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

  @JsonKey(name: 'text')
  final String? text;

  @JsonKey(name: 'foreignNames')
  List<ForeignName>? foreignNames;

  @JsonKey(name: 'type')
  final String? type;

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
    required this.name,
    required this.imageUrl,
    required this.colors,
    required this.manaCost,
    required this.text,
    required this.foreignNames,
    required this.type,
    required this.flavor,
    required this.language,
    required this.rulings,
    required this.lastUpdateDateTime,
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
