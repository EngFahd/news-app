import 'package:flutter/material.dart';
import 'package:news_app/models/cardModel.dart';
import 'package:news_app/widgits/Card.dart';

class CardListViwe extends StatelessWidget {
  const CardListViwe({
    super.key,
    // required this.cardModel,
  });
  final List<CardModel> listCards = const [
    CardModel(imge: 'assets/business.avif', titel: 'business'),
    CardModel(imge: 'assets/entertaiment.avif', titel: 'entertainment'),
    CardModel(imge: 'assets/general.avif', titel: 'general'),
    CardModel(imge: 'assets/health.avif', titel: 'health'),
    CardModel(imge: 'assets/science.avif', titel: 'science'),
    CardModel(imge: 'assets/sports.avif', titel: 'sports'),
    CardModel(imge: 'assets/technology.jpeg', titel: 'technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listCards.length,
        itemBuilder: (context, index) {
          return CardWidgite(cardModel: listCards[index]);
        },
      ),
    );
  }
}
