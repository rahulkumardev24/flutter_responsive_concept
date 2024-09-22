import 'package:flutter/material.dart';

class ResponsiveSecond extends StatefulWidget {
  const ResponsiveSecond({super.key});

  @override
  State<ResponsiveSecond> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<ResponsiveSecond> {
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
            ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Container(
                      margin: const EdgeInsets.all(11),
                    width: mqData!.size.width * 0.2,
                    height: mqData!.size.height * 0.2,
                    color: Colors.orangeAccent,
                  )),
                Center(
                    child: Container(
                      margin: const EdgeInsets.all(11),
                      width: mqData!.size.width * 0.2,
                      height: mqData!.size.height * 0.2,
                      color: Colors.orangeAccent,
                    )),
                Center(
                    child: Container(
                      margin: const EdgeInsets.all(11),
                      width: mqData!.size.width * 0.2,
                      height: mqData!.size.height * 0.2,
                      color: Colors.orangeAccent,
                    )),
              ],
            )
            : Center(
                child: Container(
                  margin: const EdgeInsets.all(11),
                width: mqData!.size.width * 0.2,
                height: mqData!.size.height * 0.2,
                color: Colors.orangeAccent,
              )));
  }
}
