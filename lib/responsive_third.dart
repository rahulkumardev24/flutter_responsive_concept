import 'package:flutter/material.dart';

class ResponsiveThird extends StatefulWidget {
  const ResponsiveThird({super.key});

  @override
  State<ResponsiveThird> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<ResponsiveThird> {
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
              child: mqData!.size.width > 900 ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                      child: Container(
                        margin: const EdgeInsets.all(11),
                        width: mqData!.size.width * 0.1,
                        height: mqData!.size.width * 0.1,
                        color: Colors.orangeAccent,
                      )),
                  Center(
                      child: Container(
                        margin: const EdgeInsets.all(11),
                        width: mqData!.size.width * 0.1,
                        height: mqData!.size.width * 0.1,
                        color: Colors.orangeAccent,
                      )),
                  Center(
                      child: Container(
                        margin: const EdgeInsets.all(11),
                        width: mqData!.size.width * 0.1,
                        height: mqData!.size.width * 0.1,
                        color: Colors.orangeAccent,
                      )),
                ],
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                  child: Container(
                    margin: const EdgeInsets.all(11),
                    width: mqData!.size.width * 0.1,
                    height: mqData!.size.width * 0.1,
                    color: Colors.orangeAccent,
                  )),
              Center(
                  child: Container(
                    margin: const EdgeInsets.all(11),
                    width: mqData!.size.width * 0.1,
                    height: mqData!.size.width * 0.1,
                    color: Colors.orangeAccent,
                  )),
              Center(
                  child: Container(
                    margin: const EdgeInsets.all(11),
                    width: mqData!.size.width * 0.1,
                    height: mqData!.size.width * 0.1,
                    color: Colors.orangeAccent,
                  )),
            ],
          ),



                ],
              ) : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                      child: Container(
                        margin: const EdgeInsets.all(11),
                        width: mqData!.size.width * 0.2,
                        height: mqData!.size.width * 0.2,
                        color: Colors.orangeAccent,
                      )),
                  Center(
                      child: Container(
                        margin: const EdgeInsets.all(11),
                        width: mqData!.size.width * 0.2,
                        height: mqData!.size.width * 0.2,
                        color: Colors.orangeAccent,
                      )),
                  Center(
                      child: Container(
                        margin: const EdgeInsets.all(11),
                        width: mqData!.size.width * 0.2,
                        height: mqData!.size.width * 0.2,
                        color: Colors.orangeAccent,
                      )),
                ],
              ),
            )
            : Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                child: Container(
                  margin: const EdgeInsets.all(11),
                  width: mqData!.size.width * 0.2,
                  height: mqData!.size.width * 0.2,
                  color: Colors.orangeAccent,
                )),
                Center(
                    child: Container(
                      margin: const EdgeInsets.all(11),
                      width: mqData!.size.width * 0.2,
                      height: mqData!.size.width * 0.2,
                      color: Colors.orangeAccent,
                    )),
                Center(
                    child: Container(
                      margin: const EdgeInsets.all(11),
                      width: mqData!.size.width * 0.2,
                      height: mqData!.size.width * 0.2,
                      color: Colors.orangeAccent,
                    )),
              ],
            ));
  }
}
