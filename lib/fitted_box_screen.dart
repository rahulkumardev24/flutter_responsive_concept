import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FittedBoxScreen extends StatefulWidget {
  const FittedBoxScreen({super.key});

  @override
  State<FittedBoxScreen> createState() => _FittedBoxScreenState();
}

class _FittedBoxScreenState extends State<FittedBoxScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mqData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(title: Text("Fitted Box"),
      ),
      body: Center(child: Container(
        width: mqData!.size.width*0.4 ,
      color: Colors.orange,
      height: 50,
        child: const FittedBox(child: Text("Hello Flutter Box"),),
      ),
      ),
    ) ;
  }
}
