import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: gradientContainer(Color.fromARGB(255, 124, 2, 254),Color.fromARGB(255, 201, 48, 236)),
      ),
    ),
  );
}
