import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  //custom function
  //function body
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 45, 3, 116),

        body: GradientContainer(
          Color.fromARGB(255, 32, 2, 85),
          Color.fromARGB(255, 172, 131, 243)
         ),
      ),
    ),
  );
}


