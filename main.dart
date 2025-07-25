
import 'package:flutter/material.dart';

void main() {
  runApp(const TrykkForMouradApp());
}

class TrykkForMouradApp extends StatelessWidget {
  const TrykkForMouradApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trykk for Mourad',
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
      ),
      home: const CounterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trykk for Mourad 💥')),
      body: Center(
        child: Text(
          'Du har trykket \$count ganger',
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
        onPressed: () => setState(() => count++),
        child: const Text('Trykk for Mourad 💥', style: TextStyle(fontSize: 20)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
