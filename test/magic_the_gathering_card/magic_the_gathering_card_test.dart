import 'dart:io';
import 'dart:convert';

import 'package:magicthegathering_api_dart/magic_the_gathering_card/magic_the_gathering_card.dart';
import 'package:test/test.dart';

void main() {
  group('MagicTheGatheringProvider', () {
    late final String encodedJson;

    setUpAll(() {
      final filePath = 'test/magic_the_gathering_card/card.json';
      encodedJson = File(filePath).readAsStringSync();
    });

    test('can decode card', () async {
      final decodedJson = json.decode(encodedJson);
      final encodedCard = decodedJson['card'];
      final card = MagicTheGatheringCard.fromJson(encodedCard);

      expect(card, isNotNull);
      expect(card.multiverseid, equals(433277));
      expect(card.name, equals('Edgar Markov'));

      expect(card.foreignNames!.length, equals(6));
      expect(card.foreignNames![0].language, equals('German'));
      expect(card.foreignNames![0].multiverseid, equals(433586));
      expect(card.foreignNames![1].language, equals('Spanish'));
      expect(card.foreignNames![1].multiverseid, equals(433895));

      expect(
        card.imageUrl,
        equals(
          'http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=433277&type=card',
        ),
      );

      expect(card.colors?.length, equals(3));
      expect(card.colors?[0], equals(CardColor.Black));
      expect(card.colors?[1], equals(CardColor.Red));
      expect(card.colors?[2], equals(CardColor.White));
    });
  });
}
