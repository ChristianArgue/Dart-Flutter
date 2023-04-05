void main(List<String> args) {
  final names = <String>[];
  names.add('Darwin');
  print(names);
  names.addAll(['Santiago', 'Diego', 'Darwin']);
  print(names);
  final index = names.indexWhere((e) => e == 'Diego');
  print('Index: $index');
  // names.removeWhere((e) => e == 'Darwin');
  // print(names);
  final filtro = names.where((e) => e.startsWith("D"));
  final filtro2 = names.lastWhere((e) => e.startsWith('D'));
  final filtro3 = names.lastWhere(
    (e) => e.startsWith('D1234'),
    orElse: () => 'Not Found'
  );
  print(filtro);
  print(filtro2);
  print(filtro3);
}