import 'package:magicthegathering_api_dart/magicthegathering_api.dart'
    as MagicTheGatheringApi;
import 'package:test/test.dart';

void main() {
  group("MagicTheGatheringApi", () async {
    final card = await MagicTheGatheringApi.Card.find(433277);
    assert(card?.name == "Edgar Markov");
  });
}
