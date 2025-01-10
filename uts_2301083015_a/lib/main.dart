
import 'package:flutter/material.dart';
import 'bengkel.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TransaksiScreen(),
    );
  }
}

