// Escreva um programa de cadastro de residências em um portal de vendas em Dart. Para tal, siga as instruções a seguir: • Crie uma classe House com as propriedades int id, String name e double price; • Implemente um construtor que utilize o this para inicializar os atributos. • Solicite ao usuário que digite os dados (id, name e price) de 3 casas; • Crie os objetos da classe com os dados informados e adicione-os a uma lista; • Após a criação, use cascade notation (..) para alterar o nome de cada casa, adicionando o sufixo "(Cadastrada)". • Use um for-in para imprimir todos os detalhes das casas cadastradas. Dica: Use stdin.readLineSync() e lembre-se de converter os dados com int.parse() e double.parse()

import 'dart:io';

class House {
  int id;
  String nome;
  double price;

  // Construtor com this
  House(this.id, this.nome, this.price);
}

void main() {
  List<House> houses = [];

  // Solicitar dados de 3 casas
  for (int i = 1; i <= 3; i++) {
    print("Digite o ID da casa $i:");
    int id = int.parse(stdin.readLineSync() ?? "0");

    print("Digite o nome da casa $i:");
    String nome = stdin.readLineSync() ?? "";

    print("Digite o preço da casa $i:");
    double price = double.parse(stdin.readLineSync() ?? "0");

    // Criar objeto House e adicionar à lista
    House house = House(id, nome, price);

    // Usando cascade notation para alterar o nome
    house..nome = "${house.nome} (Cadastrada)";

    houses.add(house);
    print("Casa $i cadastrada com sucesso!\n");
  }

  // Exibir todas as casas
  print("\n--- Casas Cadastradas ---");
  for (var house in houses) {
    print("Id: ${house.id}, Nome: ${house.nome}, Preço: R\$ ${house.price}");
  }
}
