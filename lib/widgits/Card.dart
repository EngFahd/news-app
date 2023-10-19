import 'package:flutter/material.dart';
import 'package:news_app/models/cardModel.dart';
import 'package:news_app/viws/CardPage.dart';

class CardWidgite extends StatelessWidget {
  const CardWidgite({super.key, required this.cardModel});
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return CardPage(category:cardModel.titel,);
          },
        ),);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 150,
          width: 200,
          decoration: BoxDecoration(
            // color: Colors.black,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(cardModel.imge), fit: BoxFit.fill),
          ),
          child: Center(
            child: Text(
              cardModel.titel,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
