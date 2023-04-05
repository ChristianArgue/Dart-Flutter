void main(List<String> arguments){
  print('Dev Mode');
  print(sum(2,3));
  final cat = Pet();
  cat.age;
}

/// Esta clase representa la logica de todos las mascotas
class Pet{
  /// Esta es la edad de la mascota
  int age = 1;
}

/// Suma a con b
/// 
/// [a] y [b] deben ser un integer
/// 
/// ```
/// sum(2,3) = 5
/// ```
int sum(int a, int b){
  /*
  Comentario con
  multiple linea
  */
  return a + b; // Regresa la suma de a con b
}