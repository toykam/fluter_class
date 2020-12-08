import 'package:flutter/material.dart';

class OneBlogPost extends StatefulWidget {
  @override
  _OneBlogPostState createState() => _OneBlogPostState();
}

class _OneBlogPostState extends State<OneBlogPost> {

  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        height: MediaQuery.of(context).size.height * .20,
        child: Stack(
          children: [
            Positioned(
              top: 0, right: 0, left: 0,
              child: InkWell(
                onDoubleTap: () {
                  setState(() {
                    liked = !liked;
                  });
                },
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset('assets/images/image1.jpg', height: 200, width: 100, fit: BoxFit.cover,),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Post Title", style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24
                              ),),
                              SizedBox(height: 10,),
                              Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                textAlign: TextAlign.justify,
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
                    InkWell(
                      onTap: () {
                        setState(() {
                          liked = !liked;
                        });
                      },
                      child: Icon(Icons.thumb_up, color: liked ? Colors.red : Colors.black,)
                    ),
                    Icon(Icons.comment),
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