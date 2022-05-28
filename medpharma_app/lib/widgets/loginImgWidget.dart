import 'package:flutter/material.dart';

class LoginImgWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
       Positioned(
          left: -10,
          top: -80,
          child: RotationTransition(
            turns: new AlwaysStoppedAnimation(-10/ 360),
            child: Image.asset("assets/wave-3.png",),
          )),
      Positioned(
          left: -78,
          top: 50,
          child: RotationTransition(
            turns: new AlwaysStoppedAnimation(-30/ 360),
            child: Image.asset("assets/wave-2.png",),
          ),
          ),
           Positioned(
          left: 24,
          top: -100,
            child: Image.asset("assets/Rectangle.png",),
          ),
           Positioned(
          left: -70,
          top: -20,
            child: Image.asset("assets/Rectangle.png",),
          ),
         
           Positioned(
          left: -175,
          top: -120,
          child: RotationTransition(
            turns: new AlwaysStoppedAnimation(-41/ 360),
            child: Image.asset("assets/wave-1.png",),
          )),
         
      // Positioned(
      //   child: Image.asset("assets/wave-3.png"),
      // ),
    ]);
  }
}
