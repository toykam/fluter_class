import 'package:flutter/material.dart';
import 'package:new_app/blog.dart';
import 'package:new_app/blog_detail.dart';

void main() {
  runApp(FirstScreen());
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mobile Class",
      // home: Blog(),
      initialRoute: 'blog',
      // routes: {
      //   'blog_detail': (context) => BlogDetail(),
      //   'home': (context) => Blog(),
      // },
      onGenerateRoute: (settings) {
        // name, argument
        switch (settings.name) {
          case 'blog_detail':
            return MaterialPageRoute(builder: (context) => BlogDetail(post: settings.arguments,),);
            break;
          case 'blog':
            return MaterialPageRoute(builder: (context) => Blog(),);
            break;
          default:
            return MaterialPageRoute(builder: (context) => Container(
              child: Center(
                child: Text("Page not found"),
              ),
            ),);
        }
      },
    );
  }
}