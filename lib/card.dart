import 'card_by_id_finder/card_by_id_finder.dart';
import 'magic_the_gathering_card/magic_the_gathering_card.dart';

class Card {
  const Card();

  static Future<MagicTheGatheringCard?> find(int multiverseid) {
    return CardByIdFinder.find(multiverseid);
  }

  // static Future<MagicTheGatheringCard?> where({
  //   required String name,
  //   required Language language,
  // }) {
  //   return CardByIdFinder.find(multiverseid);
  // }
}
