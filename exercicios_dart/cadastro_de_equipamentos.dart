// Crie um programa em Dart para um sistema de cadastro de equipamentos do IFSP. Use `var` para declarar o nome do equipamento como "Impressora 3D", `String` para o local como "Lab de Protótipos", e `dynamic` para o número de patrimônio, inicialmente como `12345`. Em seguida, altere o valor de `patrimonio` para `"12345-A"` (simulando uma mudança de formato). Por fim, imprima os valores e use o operador `is` para mostrar o tipo atual de cada variável. Use comentários no código para explicar por que Dart permite mudar o tipo de patrimonio, mas não de local.

void main() {
  var equipamento = "impressora3D";
  String local = "labPrototipos";
  dynamic patrimonio = 12345;

  patrimonio = "12345-A";

  print("${equipamento} do tipo ${equipamento is String}");
  print("${local} do tipo ${local is String}");
  print("${patrimonio} do tipo ${patrimonio is String}");
}
