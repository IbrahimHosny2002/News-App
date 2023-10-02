import 'package:flutter/material.dart';
import 'package:newscloud/view/widgets/category_list_view.dart';
import 'package:newscloud/view/widgets/news_list_view.builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(fontSize: 20, color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryListview()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListviewBuilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
