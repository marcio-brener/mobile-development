import 'package:flutter/material.dart';
import 'Exercicio01.dart';
import 'Exercicio02.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Exercício 2"),
          backgroundColor: Colors.blue,
        ),
        body: Exercicio2(),
      ),
    );
  }

  /* Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove a faixa "debug"
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Flutter is Fun!",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green, // cor da barra
        ),
        body: const Center(child: Exercicio1()),
      ),
    );
  } */
}
