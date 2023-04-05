
import 'dart:io';

///Realiza un programa que solicite al usuario un número entero y muestre por pantalla su tabla de multiplicar.
void main(List<String> args) {
  stdout.write('ingrese un numero para la tabla de multiplicar: ');
  int numero = int.parse(stdin.readLineSync()!);
  print('La tabla de multiplicar del $numero es:');
  tablaDeMultiplicar(numero);
}

void tablaDeMultiplicar(int a){
  for(int i = 1; i <= 12; i++){
    print('$a x $i = ${i * a}' );
  }
}