
import 'dart:io';

///Realiza un programa que solicite al usuario una palabra y muestre por pantalla la longitud de la misma.

void main(List<String> args) {
  print('Ingrese una palabra');
  String palabra = stdin.readLineSync()!;
  print('La palabra $palabra, tiene una longitud de ${palabra.length}');  
}