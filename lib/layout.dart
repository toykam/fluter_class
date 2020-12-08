import 'package:flutter/material.dart';

class LayoutWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Layout Widget'),
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("About Me", style: TextStyle(
              backgroundColor: Colors.red
            ), textAlign: TextAlign.center,),
            SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w300, letterSpacing: 1.0,
                  textBaseline: TextBaseline.ideographic, color: Colors.cyan
                ),
                textAlign: TextAlign.justify,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Text 1'), 
                Text('Text 1'), 
                Text('Text 1'), 
              ],
            ),

            Stack(
              children: [
                Container(
                  color: Colors.red,
                  height: 100, width: 100,
                  child: Text('First Container'),
                ),
                Container(
                  color: Colors.green.withOpacity(.5),
                  height: 100, width: 100,
                  child: Text('Second Container'),
                ),
              ],
            )
          ],
        )
      );
  }
}