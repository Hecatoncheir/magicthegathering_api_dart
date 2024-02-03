import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:magicthegathering_api_dart/card_by_id_finder/card_by_id_finder.dart';
import 'package:test/test.dart';

main() {
  group('CardByIdFinder', () {
    late final Uint8List encodedJson;
    setUpAll(() async {
      const filePath = 'test/card_by_id_finder/card.json';
      encodedJson = File(filePath).readAsBytesSync();
    });

    late final int multiverseid;
    setUpAll(() => multiverseid = 433277);

    late final http.Client httpClient;
    setUpAll(() {
      httpClient = MockClient((request) async {
        return request.url.toString() ==
                'https://api.magicthegathering.io/v1/cards/433277'
            ? http.Response.bytes(encodedJson, 200)
            : http.Response('', 404);
      });
    });

    test('can find card', () async {
      await http.runWithClient(() async {
        final card = await CardByIdFinder.find(multiverseid);
        expect(card, isNotNull);
        expect(card!.multiverseid, equals(433277));
        expect(card.name, equals('Edgar Markov'));
      }, () => httpClient);
    });
  });
}
