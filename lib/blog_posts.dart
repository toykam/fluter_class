import 'package:flutter/material.dart';
import 'package:new_app/one_blog_post.dart';

class BlogPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            OneBlogPost(),
            OneBlogPost(),
            OneBlogPost(),
            OneBlogPost(),
            OneBlogPost(),
            OneBlogPost(),
            OneBlogPost(),
            OneBlogPost(),
            OneBlogPost(),
          ],
        ),
      ),
    );
  }
}