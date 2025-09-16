import 'package:flutter/material.dart';

class LayoutGridview extends StatelessWidget {
  const LayoutGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contoh GridView")),// AppBar
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(6, (index) {
          return Center(
            child: Text('Item $index',style: const TextStyle(fontSize: 20)),
          );
        }),
      ),
    );
  }
}