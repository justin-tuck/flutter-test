import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: const Text('Flutter is Fun! 😅'),
      ),
      body: ListView.builder(itemBuilder: (_, index) {
        return Container(
            color: randomColor(),
            width: 500,
            height: 500,
            child: Center(
                child: Text(
              '$count',
              style: const TextStyle(fontSize: 100),
            )));
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => count++),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School')
      ]),
      drawer: const Drawer(
        child: Text('Yo!'),
      ),
    ));
  }
}

Color randomColor() {
  return Colors.primaries[Random().nextInt(Colors.primaries.length)];
}
