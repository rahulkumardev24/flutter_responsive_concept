import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MediaQueryData? mqData; // MediaQuery Data
  @override
  Widget build(BuildContext context) {
    mqData = MediaQuery.of(context); // initialize
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is title"),
      ),
      body: Center(
        child: Container(
          //  height: MediaQuery.of(context).size.height, // full height get
          //  width: MediaQuery.of(context).size.width,  // full width get
          //  height: MediaQuery.of(context).size.width*0.8 , // 80% of height
          //  width: MediaQuery.of(context).size.width*0.8 , // 80% of width
          width: mqData!.size.width * 0.6,
          height: mqData!.size.height * 0.4,
          color: Colors.greenAccent,
        ),
      ),
    );
  }
}
