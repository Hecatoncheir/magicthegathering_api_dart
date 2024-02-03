import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:magicthegathering_api_dart/magic_the_gathering_card/magic_the_gathering_card.dart';

export 'package:magicthegathering_api_dart/magic_the_gathering_card/magic_the_gathering_card.dart';

class CardByIdFinder {
  static const String url = 'https://api.magicthegathering.io/v1/cards';
  const CardByIdFinder();

  static Future<MagicTheGatheringCard?> find(int multiverseid) async {
    final uri = Uri.parse("$url/$multiverseid");

    final response = await http.get(uri);

    const httpStatusOk = 200;
    if (response.statusCode != httpStatusOk) return null;

    final encodedJson = response.body;
    final decodedJson = json.decode(encodedJson);
    if (decodedJson['card'] == null) return null;

    return MagicTheGatheringCard.fromJson(decodedJson['card']);
  }
}
