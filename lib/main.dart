import 'package:flutter/material.dart';
import 'package:training_calculator_riverpod/helpers/my_colors.dart';
import 'package:training_calculator_riverpod/screens/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Calculator',
        theme: ThemeData(
            scaffoldBackgroundColor: myColors.background1,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const HomeScreen());
  }
}
