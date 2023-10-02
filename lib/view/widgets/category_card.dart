import 'package:flutter/material.dart';
import 'package:newscloud/model/category_model.dart';
import 'package:newscloud/view/screens/category_view.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel catgeory;
  const CategoryCard({super.key, required this.catgeory});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return  CategoryView(
             category:catgeory.categoryName ,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(catgeory.image)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              catgeory.categoryName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
