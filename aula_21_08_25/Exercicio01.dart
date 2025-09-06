import 'package:flutter/material.dart';

class Exercicio1 extends StatelessWidget {
  const Exercicio1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: const BoxDecoration(color: Colors.red),
      child: const Center(
        child: Text(
          "Hi Mom 🔥",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}
