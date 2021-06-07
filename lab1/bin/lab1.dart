void main(List<String> arguments) {
  var deck = Deck();

  deck.remove('Two', 'Diamonds');

  print(deck.toString());
}

class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = Card(suit: suit, rank: rank);
        cards.add(card);
      }
    }
  }

  void printCard() {
    for (var card in cards) {
      print('${card.rank} Of ${card.suit}');
    }
  }

  void cardShuffle() {
    cards.shuffle();
  }

  @override
  String toString() {
    return cards.toString();
  }

  List<Card> cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit).toList();
  }

  List<Card> deal(int handSize) {
    List<Card> dealCards;

    if (cards.length < handSize) {
      print('''maxmim size of hand card should be
           less or equal ${cards.length} \n''');
    } else {
      dealCards = cards.sublist(0, handSize);
      cards = cards.sublist(handSize);
    }

    return dealCards;
  }

  void remove(String rank, String suit) {
    cards.removeWhere((card) => (card.suit == suit) && (card.rank == rank));
  }
}

class Card {
  String suit;
  String rank;
  Card({this.suit, this.rank});

  @override
  String toString() {
    return '[$rank , $suit]';
  }
}
