import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 99, 49, 184),
          Color.fromARGB(255, 177, 123, 179)
        ]),
      ),
    ),
  );
}
