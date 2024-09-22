import 'package:flutter/material.dart';

class ResponsiveOrientationBuilder extends StatelessWidget {
  const ResponsiveOrientationBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    // Get MediaQueryData from the BuildContext
    MediaQueryData mqData = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Orientation Builder")),
      body: Center(
        child: Container(
          width: mqData.size.width * 0.5,
          height: mqData.size.height * 0.5,
          color: Colors.lightBlueAccent,
          child: LayoutBuilder(
            builder: (_, constraints) {
              return Center(
                child: OrientationBuilder(
                  builder: (context, orientation) {
                    return orientation == Orientation.landscape
                        ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: constraints.maxWidth * 0.3,
                          height: constraints.maxHeight * 0.3,
                          color: Colors.greenAccent,
                        ),
                        Container(
                          width: constraints.maxWidth * 0.3,
                          height: constraints.maxHeight * 0.3,
                          color: Colors.greenAccent,
                        ),
                        Container(
                          width: constraints.maxWidth * 0.3,
                          height: constraints.maxHeight * 0.3,
                          color: Colors.greenAccent,
                        ),
                      ],
                    )
                        : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: constraints.maxWidth * 0.3,
                          height: constraints.maxHeight * 0.3,
                          color: Colors.greenAccent,
                        ),
                        Container(
                          width: constraints.maxWidth * 0.3,
                          height: constraints.maxHeight * 0.3,
                          color: Colors.greenAccent,
                        ),
                        Container(
                          width: constraints.maxWidth * 0.3,
                          height: constraints.maxHeight * 0.3,
                          color: Colors.greenAccent,
                        ),
                      ],
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
