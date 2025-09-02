import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app new',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'flutter new',
            style: TextStyle(fontSize: 20, color: Colors.pinkAccent),
          ),
        ),
        body: Center(
          child: Text(
            'Hello, Flutter!',
            style: TextStyle(
                fontSize: 24, color: Color.fromARGB(255, 255, 115, 0)),
          ),
        ),
      ),
    );
  }
}
