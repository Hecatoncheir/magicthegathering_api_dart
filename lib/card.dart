import 'card_by_id_finder/card_by_id_finder.dart';
import 'cards_by_name_finder/cards_by_name_finder.dart';

class Card {
  const Card();

  static Future<MagicTheGatheringCard?> find(int multiverseid) {
    return CardByIdFinder.find(multiverseid);
  }

  static Future<List<MagicTheGatheringCard>?> where({
    required String name,
    Language? language,
  }) {
    return CardsByNameFinder.where(
      name: name,
      language: language,
    );
  }
}
