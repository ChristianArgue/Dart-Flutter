void main(List<String> args) {
  // List<int> numeros = [1, 2, 3, 4, 5];
  var numeros = <int>[];
  var numero2 = <int>[7, 8, 9, 10, 20, 40];
  print(numeros);
  numeros.add(6);
  print(numeros);
  numeros.addAll(numero2);
  print(numeros);
  numeros.removeAt(0);
  print(numeros);
  numeros.removeWhere((e) => e % 2 == 0);
  print(numeros);
  numeros.clear();
  print(numeros);
}