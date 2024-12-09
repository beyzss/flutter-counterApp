import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    _counter++;
    setState(() {});
  }

  void _resetCounter() {
    _counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Text(
          'COUNTER',
          style: TextStyle(
              fontFamily: "Nunito-Medium", fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFF191919),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/zikirmatik.png", width: 300),
                Positioned(
                  top: 50,
                  right: 82,
                  child: _counterText(),
                ),
                Positioned(
                  bottom: 35,
                  child: _incrementButton(),
                ),
                Positioned(
                  right: 76,
                  bottom: 114,
                  child: _resetButton(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector _resetButton() {
    return GestureDetector(
      onTap: _resetCounter,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      ),
    );
  }

  GestureDetector _incrementButton() {
    return GestureDetector(
      onTap: () => _incrementCounter(), // or onTap= incrementCounter,
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
        ),
      ),
    );
  }

  Text _counterText() {
    return Text(
      _counter.toString(), // or '$_counter$'
      style: const TextStyle(
          fontFamily: "digital-7", fontSize: 50, color: Colors.white),
    );
  }
}
