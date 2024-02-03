import 'package:json_annotation/json_annotation.dart';

part 'legalities.g.dart';

/// Example:
/// {
///   "format": "Vintage",
///   "legality": "Legal",
/// }

@JsonSerializable()
class Legalities {
  String? format;
  String? legality;

  Legalities({
    required this.format,
    required this.legality,
  });

  factory Legalities.fromJson(Map<String, dynamic> json) =>
      _$LegalitiesFromJson(json);

  Map<String, dynamic> toJson() => _$LegalitiesToJson(this);
}
