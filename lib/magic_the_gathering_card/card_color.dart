import 'package:json_annotation/json_annotation.dart';

enum CardColor {
  @JsonValue('W')
  White,
  @JsonValue('B')
  Black,
  @JsonValue('R')
  Red,
  @JsonValue('U')
  Blue,
  @JsonValue('G')
  Green,
  @JsonValue('NoColor')
  NoColor,
}
