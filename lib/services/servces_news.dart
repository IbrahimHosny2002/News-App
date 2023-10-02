import 'package:dio/dio.dart';
import 'package:newscloud/model/article_model.dart';

class NewsServces {
  final Dio dio;

  NewsServces(this.dio);

  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=d44821ca283044fbbc9da6a345f116f2&category=$category");

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> aritcleList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);

        aritcleList.add(articleModel);
      }

      return aritcleList;
    } catch (e) {
      return [];
    }
  }
}
