import 'package:flutter/material.dart';

class LayoutHorizontal extends StatelessWidget {
  const LayoutHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Listview Horizontal")),// AppBar
      body: SizedBox(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(width: 160, color: Colors.red),
            Container(width: 160, color: Colors.blue),
            Container(width: 160, color: Colors.green),
            Container(width: 160, color: Colors.yellow),
            Container(width: 160, color: Colors.orange),
          ],
        ),
       ),
    );
  }
}