import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/expended_screen.dart';
import 'package:responsive_adaptive_ui/fitted_box_screen.dart';
import 'package:responsive_adaptive_ui/flexible_screen.dart';
import 'package:responsive_adaptive_ui/home_screen.dart';
import 'package:responsive_adaptive_ui/responsive.dart';
import 'package:responsive_adaptive_ui/responsive_four.dart';
import 'package:responsive_adaptive_ui/responsive_orientation_builder.dart';
import 'package:responsive_adaptive_ui/responsive_second.dart';
import 'package:responsive_adaptive_ui/responsive_third.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FlexibleScreen()
    );
  }
}

