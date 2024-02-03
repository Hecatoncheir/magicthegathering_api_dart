import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:magicthegathering_api_dart/magic_the_gathering_card/magic_the_gathering_card.dart';

import 'language.dart';

export 'package:magicthegathering_api_dart/magic_the_gathering_card/magic_the_gathering_card.dart';

export 'language.dart';

class CardsByNameFinder {
  static const String url = 'https://api.magicthegathering.io/v1/cards';
  const CardsByNameFinder();

  static Future<List<MagicTheGatheringCard>?> where({
    required String name,
  }) async {
    final lang = switch (language) {
      null => null,
      _ => language.name,
    };

    Uri uri = Uri.parse("$url");
    uri = uri.replace(queryParameters: {
      'name': name,
      if (lang != null) 'language': lang,
    });

    final response = await http.get(uri);

    const httpStatusOk = 200;
    if (response.statusCode != httpStatusOk) return null;

    final encodedJson = response.body;
    final decodedJson = json.decode(encodedJson);

    final encodedCards = decodedJson['cards'];
    if (encodedCards == null || encodedCards.isEmpty) return null;

    final cards = <MagicTheGatheringCard>[];
    for (final encodedCard in encodedCards) {
      final card = MagicTheGatheringCard.fromJson(encodedCard);
      cards.add(card);
    }

    return cards;
  }
}
