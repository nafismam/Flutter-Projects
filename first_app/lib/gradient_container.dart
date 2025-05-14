import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

import 'package:first_app/styled_text.dart';

import 'package:first_app/dice_roller.dart';

final startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {

  const GradientContainer(this.color1, this.color2,{super.key});


  final Color color1;
  final Color color2;
  

  @override
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color1, color2
                ],
                begin: startAlignment,
                end: endAlignment
              ),
          ),
          child:  Center(
             child: DiceRoller(),
             // String text argument use korsi
          ),
        );
  }
}



// class GradientContainer extends StatelessWidget {

//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromARGB(255, 26, 1, 70),
//                 Color.fromARGB(255, 138, 85, 231)
//                 ],
//                 begin: startAlignment,
//                 end: endAlignment
//               ),
//           ),
//           child: const Center(
//              child: StyledText('Hello World!'),// String text argument use korsi
//           ),
//         );
//   }
// }