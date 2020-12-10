import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.blue,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(1, 1),
                spreadRadius: 2,
                blurRadius: 5
              )
            ],
            // borderRadius: BorderRadius.all(Radius.circular(100)),
            // gradient: LinearGradient(
            //   colors: [
            //     Colors.black, Colors.green, Colors.red
            //   ],
            //   begin: Alignment.topCenter,
            //   end: Alignment.bottomCenter,
            //   stops: [.5, .7, .9],
            //   tileMode: TileMode.repeated
            // )
          ),
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Text("Welcome to Mobile Class App", style: TextStyle(
            color: Colors.amber, fontWeight: FontWeight.w900, backgroundColor: Colors.green
          ),),
        ),
      ),
    );
  }
}