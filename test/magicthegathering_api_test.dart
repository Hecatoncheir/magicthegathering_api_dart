import 'dart:io';
import 'dart:typed_data';

import 'package:http/testing.dart';
import 'package:magicthegathering_api_dart/magicthegathering_api.dart'
    as MagicTheGatheringApi;
import 'package:test/test.dart';
import 'package:http/http.dart' as http;

void main() {
  group("MagicTheGatheringApi", () async {
    late final int multiverseid;
    setUpAll(() => multiverseid = 433277);

    group("find card by id", () {
      late final Uint8List encodedJson;
      setUpAll(() async {
        const filePath = 'test/card_by_id_finder/card.json';
        encodedJson = File(filePath).readAsBytesSync();
      });

      late final http.Client httpClient;
      setUpAll(() {
        httpClient = MockClient((request) async {
          return request.url.toString() ==
                  'https://api.magicthegathering.io/v1/cards/433277'
              ? http.Response.bytes(encodedJson, 200)
              : http.Response('', 404);
        });

        test('', () async {
          await http.runWithClient(() async {
            final card = await MagicTheGatheringApi.Card.find(multiverseid);
            expect(card, isNotNull);
            expect(card!.multiverseid, equals(433277));
            expect(card.name, equals('Edgar Markov'));
          }, () => httpClient);
        });
      });

      group("find cards by name", () {
        late final Uint8List encodedJson;
        setUpAll(() async {
          const filePath = 'test/cards_by_name_finder/cards.json';
          encodedJson = File(filePath).readAsBytesSync();
        });

        late final http.Client httpClient;
        setUpAll(() {
          httpClient = MockClient((request) async {
            return request.url.toString() ==
                    'https://api.magicthegathering.io/v1/cards?name=Edgar%20Markov'
                ? http.Response.bytes(encodedJson, 200)
                : http.Response('', 404);
          });

          test('without language', () async {
            await http.runWithClient(() async {
              final card =
                  await MagicTheGatheringApi.Card.where(name: 'Edgar Markov');
              expect(card, isNotNull);
              expect(card!.multiverseid, equals(433277));
              expect(card.name, equals('Edgar Markov'));
            }, () => httpClient);
          });
        });
      });
    });
  });
}
