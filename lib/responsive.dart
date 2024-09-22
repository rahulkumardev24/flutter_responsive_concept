import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  const Responsive({super.key});
  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  MediaQueryData? mqData;
  @override
  Widget build(BuildContext context) {
    mqData = MediaQuery.of(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Responsive"),
        ),

        /// orientation --  --
        body: mqData!.size.width > mqData!.size.height
            ? Center(
                child: Container(
                width: mqData!.size.width * 0.6,
                height: mqData!.size.height * 0.2,
                color: Colors.orangeAccent,
              ))
            : Center(
                child: Container(
                width: mqData!.size.width * 0.2,
                height: mqData!.size.height * 0.6,
                color: Colors.orangeAccent,
              )));
  }
}
