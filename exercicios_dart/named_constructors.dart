//Utilizando a classe Laptop do exercício anterior, crie 3 named constructors. Cada um deve criar uma instância de Laptop que configure: • um laptop para somente navegação na internet; • um laptop para uso em escritório; • um laptop para programação. Você deve decidir quais configurações serão definidas em cada named constructor. Por fim, crie instâncias de objetos Laptop utilizando cada um dos named constructor e imprima seus valores no console.

class Laptop {
  int id;
  String nome;
  int ram;
  int clockCpu;

  Laptop.Internet(this.id, this.nome, this.ram, this.clockCpu);
  Laptop.Escritorio(this.id, this.nome, this.ram, this.clockCpu);
  Laptop.Programacao(this.id, this.nome, this.ram, this.clockCpu);
}
