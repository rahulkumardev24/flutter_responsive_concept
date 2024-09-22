import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveFour extends StatelessWidget {
  MediaQueryData? mqData ;

  @override
  Widget build(BuildContext context) {
 mqData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text("Responsive Four"),),
      body: Center(
        child: Container(
          width: mqData!.size.width*0.5 ,
          height: mqData!.size.height*0.5 ,
          color: Colors.orangeAccent,
          /// layout builder
          child: LayoutBuilder(builder: (context , constraints){
            return Center(
              child: constraints.maxWidth > constraints.maxHeight ? Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: constraints.maxWidth*0.3,
                      width: constraints.maxWidth*0.3,
                      color: Colors.white,

                    ),
                    Container(
                      height: constraints.maxWidth*0.3,
                      width: constraints.maxWidth*0.3,
                      color: Colors.white,

                    ),

                  ],
                ),
              ) : Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: constraints.maxHeight*0.3,
                    width: constraints.maxHeight*0.3,
                    color: Colors.greenAccent,

                  ),
                  Container(
                    height: constraints.maxHeight*0.3,
                    width: constraints.maxHeight*0.3,
                    color: Colors.greenAccent,

                  ),
                ],
              ),
            );

          }),


        ),
      ),
    );
  }
}
