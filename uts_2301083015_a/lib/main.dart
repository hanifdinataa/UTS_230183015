
import 'package:flutter/material.dart';
import 'screens/nilai_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SOAL A - UTS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NilaiPage(),
    );
  }
}