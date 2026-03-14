import 'package:flutter/material.dart';
import 'house.dart';          
import 'sorting_state.dart';   
import 'sorting_hat_view.dart'; 
import 'house_view.dart';     

class HouseArea extends StatelessWidget {
  final House? house;
  final SortingState state;  

  const HouseArea({
    super.key,
    required this.house,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    if (state == SortingState.idle || state == SortingState.sorting) {
      return SortingHatView(state: state);
    }
    return HouseView(house: house!);
  }
}