import 'package:flutter/material.dart';

class PostCategoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: Colors.blue, style: BorderStyle.solid)
      ),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/image1.jpg'),
          ),
          SizedBox(height: 5,),
          // Text
          Text('Tech', style: TextStyle(
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}