import 'dart:async';
void main(List<String> args) async {
  print('Hola');
  final mesage = await sleep(3);
  print(mesage);
  print('🐶');
  
}

Future<String> sleep(int seconds){
  Completer<String> completer = Completer();
  
  Timer(
    Duration(seconds: seconds),
    () => completer.complete('🥶')
  );
  return completer.future;
}