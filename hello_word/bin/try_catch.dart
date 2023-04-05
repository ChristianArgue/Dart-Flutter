import 'dart:io';

void main(List<String> args) {
  calculateAge(); 
}

void calculateAge(){
  try{
    print('Enter a Birthday: ');
    final text = stdin.readLineSync();
    if(text != null){
      final birthday = DateTime.parse(text);
      final currentDay = DateTime.now();
      final days = currentDay.difference(birthday).inDays;
      final age = days / 365;
      print('---> ${age.toStringAsFixed(0)}');
    }
  }catch(e){
    print('ERROR ${e.runtimeType}');
    // print(e);
    // print(s); // Stack Trace
  }finally{
    print('😃');
  }
}