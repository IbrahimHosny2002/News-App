import 'package:flutter/material.dart';
import 'package:newscloud/view/widgets/news_list_view.builder.dart';

class CategoryView extends StatelessWidget {
  final String category;
  const CategoryView({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: CustomScrollView(
            slivers: [NewsListviewBuilder(category: category)],
          ),
        ),
      ),
    );
  }
}
