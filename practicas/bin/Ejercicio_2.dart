import 'dart:io';

//  2. Realiza un programa que solicite al usuario un número entero y muestre por pantalla si es par o impar.

void main(List<String> args) {
  stdout.write('Ingrese un numero entero: ');
  int numero = int.parse(stdin.readLineSync()!);
  if(numero % 2 == 0){
    print('Es Par');
  }else{
    print('Es Impar');
  }
}