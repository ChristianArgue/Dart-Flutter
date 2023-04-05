// Realiza un programa que solicite al usuario una cadena de caracteres y muestre por pantalla cuántas veces aparece cada vocal en la misma.
import 'dart:io';

void main(List<String> args) {
  stdout.write('Ingrese una frase: ');
  String frase = stdin.readLineSync()!;
  int a = 0, e = 0, i = 0, o = 0, u = 0;
  for(int j = 0; j < frase.length; j++){
    print(frase[j]);
    if(frase[j] == 'a'){
      a++;
    }else if(frase[j] == 'e'){
      e++;
    }else if(frase[j] == 'i'){
      i++;
    }else if(frase[j] == 'o'){
      o++;
    }else if(frase[j] == 'u'){
      u++;
    }
  }
  print('''
  Total de la vocal a = $a
  Total de la vocal e = $e
  Total de la vocal i = $i
  Total de la vocal o = $o
  Total de la vocal u = $u
  ''');
}