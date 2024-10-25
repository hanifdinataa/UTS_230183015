import 'package:flutter/material.dart';
import 'screens/pdam_billing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SOAL A - PDAM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PdamBillingPage(),
    );
  }
}
