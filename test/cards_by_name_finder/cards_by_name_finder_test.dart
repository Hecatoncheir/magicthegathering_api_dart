import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:magicthegathering_api_dart/cards_by_name_finder/cards_by_name_finder.dart';
import 'package:test/test.dart';

main() {
  group('CardsByNameFinder', () {
    late final Uint8List encodedJson;
    setUpAll(() async {
      const filePath = 'test/cards_by_name_finder/cards.json';
      encodedJson = File(filePath).readAsBytesSync();
    });

    group('without language', () {
      late final http.Client httpClient;
      setUpAll(() {
        httpClient = MockClient((request) async {
          return request.url.toString() ==
                  'https://api.magicthegathering.io/v1/cards?name=Edgar+Markov'
              ? http.Response.bytes(encodedJson, 200)
              : http.Response('', 404);
        });
      });

      test('can find card by name', () async {
        await http.runWithClient(() async {
          final cards = await CardsByNameFinder.where(name: "Edgar Markov");
          expect(cards, isNotNull);
          expect(cards!.length, equals(10));
          expect(cards.first.multiverseid, equals(433277));
          expect(cards.first.name, equals('Edgar Markov'));
        }, () => httpClient);
      });
    });

    group('with language', () {
      late final http.Client httpClient;
      setUpAll(() {
        httpClient = MockClient((request) async {
          print(request.url.toString());
          return request.url.toString() ==
                  'https://api.magicthegathering.io/v1/cards?name=Edgar+Markov&language=english'
              ? http.Response.bytes(encodedJson, 200)
              : http.Response('', 404);
        });
      });

      test('can find card by name', () async {
        await http.runWithClient(() async {
          final cards = await CardsByNameFinder.where(
            name: "Edgar Markov",
            language: Language.English,
          );
          expect(cards, isNotNull);
          expect(cards!.length, equals(10));
          expect(cards.first.multiverseid, equals(433277));
          expect(cards.first.name, equals('Edgar Markov'));
        }, () => httpClient);
      });
    });
  });
}
