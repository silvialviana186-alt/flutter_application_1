import 'package:flutter/material.dart';
import 'package:flutter_application_1/layout_listitemtugas.dart';

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
        home: Tugas3Page());
        }
}
