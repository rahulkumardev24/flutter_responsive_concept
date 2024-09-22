import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpendedScreen extends StatelessWidget {
  const ExpendedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expended Widgets"),),
      body: Center(child: Row(children: [
        Container(
          color: Colors.lightBlue,
          width: 100,
          height: 50,
        ) ,
        Expanded(
          child: Container(
            color: Colors.yellowAccent,
            width: 100,
            height: 50,
          ),
        ) ,
        Container(
          color: Colors.lightBlue,
          width: 100,
          height: 50,
        ) ,
      ],),),
    );
  }
}
