import 'package:flutter/material.dart';
import 'package:news_app/widgits/CardListViwe.dart';
import 'package:news_app/widgits/FutureBuilder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // Remmwmbar Elvation => No Shadow
          elevation: 0,
          centerTitle: true,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: Colors.black),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Cloud',
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              )
            ],
          ),
        ),
        body: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CardListViwe(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            // SliverToBoxAdapter(
            //   child: Sliverlist(),
            // ),
            FutuerListBuilder(
              category: 'general',
            )
          ],
        ));
  }
}





// class CardViwe extends StatelessWidget {
//   const CardViwe({
//     super.key,
//     required this.ListCard,
//   });
//   final List<NewsModel> ListCard;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 150,
//       child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: ListCard.length,
//           itemBuilder: (context, index) {
//             return CardWidgite(
//               modelCard: ListCard[index],
//             );
//           }),
//     );
//   }
// }

