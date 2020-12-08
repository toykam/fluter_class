import 'package:flutter/material.dart';
import 'package:new_app/blog.dart';

void main() {
  runApp(FirstScreen());
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mobile Class",
      home: Blog(),
    );
  }
}