/*
1. Realiza un programa que solicite al usuario dos números enteros y muestre por pantalla su suma, su resta, su multiplicación y su división.
*/

import 'dart:io';

void main(List<String> args) {
  stdout.write('Ingrese un numero: ');
  double numero1 = double.parse(stdin.readLineSync()!);
  stdout.write('Ingrese un numero: ');
  double numero2 = double.parse(stdin.readLineSync()!);

  print('La Suma es: ${suma(numero1, numero2)}');
  print('La Resta es: ${resta(numero1, numero2)}');
  print('La Multiplicacion es: ${multiplicacion(numero1, numero2)}');
  print('La Division es: ${division(numero1, numero2)}');
}

double suma(double a, double b){
  double c = (a + b).roundToDouble();
  return c;
}

double resta(double a, double b){
  double c = (a - b).roundToDouble();
  return c;
}

double multiplicacion(double a, double b){
  double c = (a * b).roundToDouble();
  return c;
}

double division(double a, double b){
  double c = (a / b).roundToDouble();
  return c;
}