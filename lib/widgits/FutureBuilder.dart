import 'package:flutter/material.dart';
import 'package:news_app/models/postModel.dart';
import 'package:news_app/service/ServicesNews.dart';
import 'package:news_app/widgits/postListViwe.dart';

class FutuerListBuilder extends StatefulWidget {
  const FutuerListBuilder({
    super.key,
    required this.category,
  });
  final String category;
  @override
  State<FutuerListBuilder> createState() => _FutuerListBuilderState();
}

class _FutuerListBuilderState extends State<FutuerListBuilder> {
  var future;
  @override
  void initState() {
    
    super.initState();
    future = NewsServices().getNews(categories: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PostModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SliverlistPost(
            listPost: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text("there was an error"),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
