import 'package:flutter/material.dart';
import 'package:ornek_proje/screens/home.screen.dart';

void main(List<String> args) {
  runApp(const Uygulama());
}

class Uygulama extends StatelessWidget {
  const Uygulama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "digital-7"),
      home: const HomeScreen(),
    );
  }
}
