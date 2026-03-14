import 'package:flutter/material.dart';
import 'sorting_state.dart';
import 'speech_bubble.dart';

class SortingHatView extends StatelessWidget {
  final SortingState state;

  const SortingHatView({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 500,
        width: 500,
        child: Stack(
          alignment: Alignment.center,
          children: [

            Container(
              width: 325,
              height: 325,
              decoration: BoxDecoration(
                shape: BoxShape.circle, 
                boxShadow: [
                  BoxShadow(
                    color: Colors.purpleAccent.withValues(alpha: 0.6), 
                    blurRadius: 60,   
                    spreadRadius: 20, 
                  ),
                ],
              ),
            ),

            Image.asset(
              "assets/images/sorting_hat_sticker.png",
              height: 325,
            ),

            if (state == SortingState.sorting)
              const Positioned(
                top: 20,
                child: SpeechBubble(text: "Hmm... difícil..."),
              ),

          ],
        ),
      ),
    );
  }
}