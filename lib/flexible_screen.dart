import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexibleScreen extends StatelessWidget {
  const FlexibleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flexible Screen"),),
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Row(
          children: [
            Container(
              color: Colors.orange,
              width: 150,
              height: 100,
            ) ,
            Flexible(
              // fit: FlexFit.loose,
              fit: FlexFit.tight,

              child: Container(
                color: Colors.white,
                width: 150,
                height: 100,
              ),
            ) ,
            Container(
              color: Colors.green,
              width: 150,
              height: 100,
            ) ,
          ],
        ),),
    ) ;
  }
}
