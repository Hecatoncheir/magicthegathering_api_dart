import 'package:json_annotation/json_annotation.dart';

part 'foreign_name.g.dart';

/// Example:
/// "name":"Unhold aus den Schatten",
//  "text":"Fliegend\nImmer wenn der Unhold aus den Schatten einem Spieler Kampfschaden zufügt, schickt der Spieler eine Karte aus seiner Hand ins Exil. Du kannst die Karte spielen, solange sie im Exil bleibt.\nOpfere einen Menschen: Regeneriere den Unhold aus den Schatten.",
//  "type":"Kreatur — Vampir, Zauberer",
//  "flavor":null,
//  "imageUrl":"http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=532697&type=card",
//  "language":"German",
//  "multiverseid":532697

@JsonSerializable()
class ForeignName {
  int? multiverseid;
  String? name;
  String? text;
  String? type;
  String? flavor;
  String? language;
  String? imageUrl;

  ForeignName({
    required this.multiverseid,
    required this.name,
    required this.text,
    required this.type,
    required this.flavor,
    required this.language,
    required this.imageUrl,
  });

  factory ForeignName.fromJson(Map<String, dynamic> json) =>
      _$ForeignNameFromJson(json);

  Map<String, dynamic> toJson() => _$ForeignNameToJson(this);
}
