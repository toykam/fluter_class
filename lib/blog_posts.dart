import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_app/one_blog_post.dart';
import 'package:new_app/utils/posts.dart';

class BlogPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: FutureBuilder(
          future: Dio().get('https://jsonplaceholder.typicode.com/posts'),
          builder: (context, snapshot) {
            switch(snapshot.connectionState) {
              case ConnectionState.none:
                break;
              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(),
                );
                break;
              case ConnectionState.active:
                return Center(
                  child: CircularProgressIndicator(),
                );
                break;
              case ConnectionState.done:
                if (snapshot.hasData) {
                  var data = snapshot.data.data;
                  print(data.runtimeType);
                  return Column(
                    children: [
                      ...data.map((e) {
                        var post = Post.fromJson(e);
                        return OneBlogPost(post: post,);
                      })
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text('${snapshot.error}'),
                  );
                }
                break;
            }
            
          },
        ),
      ),
    );
  }
}