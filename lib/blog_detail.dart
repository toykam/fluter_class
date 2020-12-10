import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_app/blog_comments.dart';
import 'package:new_app/utils/posts.dart';

class BlogDetail extends StatelessWidget {
  Post post;
  BlogDetail({this.post});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("${post.title}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("${post.detail}", style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.w300
            ),),
            SizedBox(height: 15,),
            BlogComment(postId: post.id,)
          ],
        ),
      ),
    );
  }
}