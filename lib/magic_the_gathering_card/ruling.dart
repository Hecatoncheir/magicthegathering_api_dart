import 'package:json_annotation/json_annotation.dart';

part 'ruling.g.dart';

/// Example:
/// {
/// "date":"2019-01-25",
/// "text":"Angel of Grace’s triggered ability doesn’t prevent damage. It only changes the result of damage dealt to you. For example, a creature with lifelink that deals damage to you will still cause its controller to gain life, even if that damage would reduce your life total to less than 1."
/// },

@JsonSerializable()
class Ruling {
  DateTime date;
  String text;

  Ruling({
    required this.date,
    required this.text,
  });

  factory Ruling.fromJson(Map<String, dynamic> json) => _$RulingFromJson(json);

  Map<String, dynamic> toJson() => _$RulingToJson(this);
}
