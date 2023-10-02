import 'package:flutter/material.dart';
import 'package:newscloud/model/article_model.dart';

class NewsTile extends StatelessWidget {
  final ArticleModel articleModel;
  const NewsTile({required this.articleModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black87,
          width: 1
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10)
            ),
            child: articleModel.image == null
                ? Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQppJKxBxJI-9UWLe2VVmzuBd24zsq4_ihxZw&usqp=CAU',
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  )
                : Image.network(
                    articleModel.image!,
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
              left: 5,
              right: 5,
            ),
            child: Text(
              articleModel.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
         
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              left: 5,
              right: 5,
              bottom: 5
            ),
            child: Text(
              articleModel.subtitle ?? '',
              maxLines: 2,
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
