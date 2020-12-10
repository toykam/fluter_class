import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_app/utils/posts.dart';

class BlogComment extends StatelessWidget {
  int postId;
  BlogComment({this.postId});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Comments "),
        FutureBuilder(
            future: Dio().get('https://jsonplaceholder.typicode.com/comments?postId=$postId'),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...data.map((e) {
                      var comment = Comment.fromJson(e);
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name: ${comment.name}", style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 5,),
                            Text("Email: ${comment.email}", style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 5,),
                            Text("${comment.body}", style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 24
                            ), textAlign: TextAlign.justify,),
                          ],
                        ),
                      );
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
      ],
    );
  }
}