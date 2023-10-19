import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/models/postModel.dart';

class NewsServices {
  Future<List<PostModel>> getNews({required String categories}) async {
    return await Future.delayed(const Duration(seconds: 3), () async {
      Uri url = Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=8dce8095773f4f798b766df9b322976f&category=$categories');
      http.Response response = await http.get(url);
      if (response.statusCode == 400) {
        var data = jsonDecode(response.body);
        throw Exception(data['status']);
      }
      // Map<String, dynamic> data = jsonDecode(response.body);
      Map<String, dynamic> data = jsonDecode(response.body);
      List<dynamic> arts = data['articles'];
      // PostModel postModel = PostModel.fromJson(data);
      // return postModel;

      List<PostModel> listPost = [];
      for (var art in arts) {
        PostModel postModel = PostModel.fromJson(art);
        listPost.add(postModel);
      }
      return listPost;
    });
  }
}
