import 'package:flutter/material.dart';
import 'house.dart';

class HouseView extends StatelessWidget {
  final House house;
  const HouseView({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(house.imagePath, height: 200),
          const SizedBox(height: 20),
          Text(
            house.name,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: house.color,
            ),
          )
        ],
      ),
    );
  }
}