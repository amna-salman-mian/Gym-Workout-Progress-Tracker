import 'package:flutter/material.dart';
//import 'package:gym_workout_tracker/view/login/on_boarding_view.dart';
//import 'package:gym_workout_tracker/view/menu/menu_view.dart';
//import 'common/color_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym Workout Progress Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Quicksand",
        colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
        useMaterial3: false,
      ),
      home: const MenuView(),
    );
  }
}
