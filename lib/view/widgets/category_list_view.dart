import 'package:flutter/material.dart';
import 'package:newscloud/model/category_model.dart';
import 'package:newscloud/view/widgets/category_card.dart';

class CategoryListview extends StatelessWidget {
  const CategoryListview({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/business.jpg',
      categoryName: 'Business',
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/sports.jpg',
      categoryName: 'Sports',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (contex, index) {
            return CategoryCard(
              catgeory: categories[index],
            );
          }),
    );
  }
}
