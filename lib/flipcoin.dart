import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const CoinFlipApp());
}

class CoinFlipApp extends StatelessWidget {
  const CoinFlipApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coin Flip',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CoinFlipScreen(),
    );
  }
}

class CoinFlipScreen extends StatefulWidget {
  const CoinFlipScreen({super.key});

  @override
  _CoinFlipScreenState createState() => _CoinFlipScreenState();
}

class _CoinFlipScreenState extends State<CoinFlipScreen> {
  bool isHeads = true;

  void flipCoin() {
    setState(() {
      isHeads = Random().nextBool();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coin Flip'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              isHeads ? 'images/heads.png' : 'images/tails.png',
              height: 200,
              width: 200,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: flipCoin,
              child: const Text('Flip It'),
            ),
          ],
        ),
      ),
    );
  }
}
