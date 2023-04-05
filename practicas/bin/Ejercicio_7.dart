// Realiza un programa que solicite al usuario una cadena de caracteres y muestre por pantalla la cadena invertida.
import 'dart:io';

void main(List<String> args) {
  stdout.write('Ingrese una cadena de caracteres: ');
  String cadena = stdin.readLineSync()!;
  String cadenaInvertida = '';
  for(int i = cadena.length - 1; i >= 0; i--){
    cadenaInvertida += cadena[i];
  }
  print('La cadena invertida es: $cadenaInvertida');
}
