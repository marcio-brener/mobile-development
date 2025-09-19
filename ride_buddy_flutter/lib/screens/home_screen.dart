import 'package:flutter/material.dart';
import 'despesas_screen.dart';
import 'receitas_screen.dart';
import 'relatorios_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Lista de itens do menu
  final List<Map<String, String>> items = const [
    {
      "title": "Despesas",
      "subtitle":
          "Gerencie e registre seus gastos para manter o controle financeiro.",
      "image": "assets/capital.png",
    },
    {
      "title": "Receitas",
      "subtitle":
          "Acompanhe suas receitas e mantenha o equilíbrio das suas finanças.",
      "image": "assets/revenue-growth.png",
    },
    {
      "title": "Relatórios",
      "subtitle":
          "Visualize análises detalhadas para entender melhor sua situação financeira.",
      "image": "assets/relatorio-de-negocios.png",
    },
  ];

  // Método para navegar para a página correta
  void _navigateToPage(BuildContext context, int index) {
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DespesasScreen()),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ReceitasScreen()),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const RelatoriosScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 120,
        title: const Text(
          "Ride Buddy",
          style: TextStyle(
            color: Colors.white,
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 248, 151, 33),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        separatorBuilder: (context, index) =>
            const Divider(thickness: 1, color: Colors.grey),
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 8),
            leading: Image.asset(item["image"]!, width: 50, height: 50),
            title: Text(
              item["title"]!,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(item["subtitle"]!),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => _navigateToPage(context, index),
          );
        },
      ),
    );
  }
}
