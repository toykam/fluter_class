import 'package:flutter/material.dart';
import 'package:new_app/blog_comments.dart';
import 'package:new_app/utils/posts.dart';

class OneBlogPost extends StatelessWidget {

  // property
  Post post;
  // contructor
  OneBlogPost({this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        height: MediaQuery.of(context).size.height * .20,
        child: Stack(
          children: [
            Positioned(
              top: 0, right: 0, left: 0,
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'blog_detail', arguments: post),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset('${post.image}', height: 200, width: 100, fit: BoxFit.cover,),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${post.title}", style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24
                              ),),
                              SizedBox(height: 10,),
                              Text(
                                "${post.detail}",textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0, right: 0, left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.thumb_up),
                    InkWell(
                      child: Icon(Icons.comment),
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          enableDrag: true,
                          builder: (context) {
                            return SingleChildScrollView(
                              child: Container(
                                color: Colors.transparent,
                                margin: const EdgeInsets.only(top: 50),
                                child: BlogComment(postId: post.id,),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    Icon(Icons.share),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}