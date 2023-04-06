// Realiza un programa que solicite al usuario una cadena de caracteres y muestre por pantalla si es un palíndromo o no.

import 'dart:io';

void main(List<String> args) {
  stdout.write('Ingrese una cadena: ');
  String cadena = stdin.readLineSync()!;
  String cadenaInvertida = cadena.split('').reversed.join();
  if (cadena == cadenaInvertida) {
    print('$cadena es un palíndromo.');
  } else {
    print('$cadena no es un palíndromo.');
  }
}
