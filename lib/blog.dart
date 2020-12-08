import 'package:flutter/material.dart';
import 'package:new_app/blog_posts.dart';
import 'package:new_app/post_categories.dart';

class Blog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TechEnd News"),
        elevation: 0,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // The Post Categories
              PostCategories(),
              // BlogPosts()
              BlogPosts()
            ],
          ),
        ),
      ),
    );
  }
}