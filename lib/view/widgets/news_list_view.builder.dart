import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newscloud/model/article_model.dart';
import 'package:newscloud/services/servces_news.dart';
import 'package:newscloud/view/widgets/news_list_view.dart';

class NewsListviewBuilder extends StatefulWidget {
  final String category;
  const NewsListviewBuilder({required this.category, super.key});

  @override
  State<NewsListviewBuilder> createState() => _NewsListviewBuilderState();
}

class _NewsListviewBuilderState extends State<NewsListviewBuilder> {
  var future;
  @override
  void initState() {
    future = NewsServces(Dio()).getGeneralNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListview(articles: snapshot.data ?? []);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
                child: Center(child: Text("oops there is an error")));
          } else {
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
