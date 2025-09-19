import 'package:flutter/material.dart';

class DespesasScreen extends StatelessWidget {
  const DespesasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas'),
        backgroundColor: const Color.fromARGB(255, 248, 151, 33),
      ),
      body: const Center(
        child: Text('Página de Despesas', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
