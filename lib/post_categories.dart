import 'package:flutter/material.dart';
import 'package:new_app/post_category_item.dart';

class PostCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            PostCategoryItem(),
            PostCategoryItem(),
            PostCategoryItem(),
            PostCategoryItem(),
            PostCategoryItem(),
            PostCategoryItem(),
            PostCategoryItem(),
            PostCategoryItem(),
            PostCategoryItem(),
            PostCategoryItem(),
            PostCategoryItem(),
            PostCategoryItem(),
            PostCategoryItem(),
            PostCategoryItem(),
            PostCategoryItem(),
            PostCategoryItem(),
            PostCategoryItem(),
            PostCategoryItem(),
          ],
        ),
      ),
    );
  }
}