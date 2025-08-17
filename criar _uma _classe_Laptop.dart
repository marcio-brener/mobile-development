//Escreva um programa em Dart para criar uma classe Laptop com as propriedades [id, nome, ram, clockCpu] e crie 3 objetos dela, imprimindo todos os detalhes.

class Laptop {
  int id;
  String nome;
  int ram;
  int clockCpu;

  Laptop(this.id, this.nome, this.ram, this.clockCpu);
}

void main() {
  List<Laptop> laptops = [
    new Laptop(1, "Lap01", 8, 9),
    new Laptop(2, "Lap02", 16, 19),
    new Laptop(3, "Lap03", 8, 9),
  ];

  laptops.forEach(
    (laptop) => print(
      "Id: ${laptop.id}, Nome: ${laptop.nome}, RAM: ${laptop.ram}, clockCPU: ${laptop.clockCpu}",
    ),
  );
}
