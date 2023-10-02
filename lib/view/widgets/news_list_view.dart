import 'package:flutter/material.dart';
import 'package:newscloud/model/article_model.dart';
import 'package:newscloud/view/widgets/news_tile.dart';

class NewsListview extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListview({
    required this.articles,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: NewsTile(
            articleModel: articles[index],
          ),
        );
      }),
    );
  }
}
