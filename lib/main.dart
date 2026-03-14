import 'package:flutter/material.dart';
import 'package:sorting_hat/sorting_hat_screen.dart';

void main() {
  runApp(const SortingHatApp());
}

class SortingHatApp extends StatelessWidget {
  const SortingHatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chapéu Seletor",
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Cinzel"
      ),
      home: const SortingHatScreen(),
    );
  }
}

