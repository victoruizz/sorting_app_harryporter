import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sorting_hat/hogwarts_header.dart';
import 'package:sorting_hat/house.dart';
import 'package:sorting_hat/house_area.dart';
import 'package:sorting_hat/sorting_button.dart';
import 'package:sorting_hat/sorting_state.dart';

class SortingHatScreen extends StatefulWidget {
  const SortingHatScreen({super.key});

  @override
  State<SortingHatScreen> createState() => _SortingHatScreenState();
}

class _SortingHatScreenState extends State<SortingHatScreen> {

  final List<House> houses = [
    House(name: "Grifinória",  imagePath: "assets/images/gryffindor_1.png",  color: Colors.red),
    House(name: "Sonserina",   imagePath: "assets/images/slytherin_1.png",   color: Colors.green),
    House(name: "Corvinal",    imagePath: "assets/images/ravenclaw_1.png",   color: Colors.blue),
    House(name: "Lufa-Lufa",   imagePath: "assets/images/hufflepuff_1.png",  color: Colors.amber),
  ];

  House? selectedHouse;
  SortingState state = SortingState.idle;

  Future<void> sortHouse() async{
    if(state != SortingState.idle) return;

    setState(() {
      state = SortingState.sorting;
      selectedHouse = null;
    });

      await Future.delayed(const Duration(seconds: 3));

      final house = houses[Random().nextInt(houses.length)];

    setState(() {
      selectedHouse = house;
      state = SortingState.result;
    });

    await Future.delayed(const Duration(seconds: 5));

    setState(() {
      selectedHouse = null;
      state = SortingState.idle;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xff0c0c1e),
      body: SafeArea(
        child: Column(
          children: [
            const HogwartsHeader(),
            Expanded(
              child: HouseArea(house: selectedHouse, state: state),
            ),
            SortingButton(onPressed: sortHouse, state: state),
            const SizedBox(height: 40)
          ],
        )),
    );
  }
}