// Realiza un programa que solicite al usuario un número entero y muestre por pantalla si es un número primo o no.

import 'dart:io';

// import 'dart:io';

void main() {
  stdout.write('Ingrese un número entero: ');
  int numero = int.parse(stdin.readLineSync()!);

  bool esPrimo = true;

  if (numero == 1) {
    esPrimo = false;
  } else {
    for (int i = 2; i <= numero ~/ 2; i++) {
      if (numero % i == 0) {
        esPrimo = false;
        break;
      }
    }
  }

  if (esPrimo) {
    print('$numero es un número primo.');
  } else {
    print('$numero no es un número primo.');
  }
}

