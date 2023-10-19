import 'package:flutter/material.dart';
import 'package:news_app/widgits/FutureBuilder.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
           const SliverToBoxAdapter(
              child: SizedBox(height: 50),
            ),
            FutuerListBuilder(
              category: category,
            )
          ],
        ),
      ),
    );
  }
}
