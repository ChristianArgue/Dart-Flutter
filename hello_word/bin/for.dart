void main(List<String> args) {
  
  int index = 10;

  // for(int i = 0; i <= index; i++){
  //   if(i == 5){
  //     // break;
  //     continue;
  //   }
  //   print('i = $i');
  // }

  final name = 'Christian';

  // for(int i = 0; i < name.length; i++){
  //   print(name[i]);
  // }

  final numbers = [10, 11, 12, 13, 14];

  // for(int i = 0; i < numbers.length; i++){
  //   print(numbers[i]);
  // }
  // print('Metodo mas corto');
  // for(int e in numbers){
  //   print(e);
  // }

  final names = ['Christian', 'Mario', 'Samuel'];

  // for(var e in names){
  //   print(e);
  // }

  final products = <int, String>{
    0: 'Mac Mini',
    1: 'IPhone'
  };

  for(final e in products.entries){
    print('Key: ${e.key}');
    print('Value: ${e.value}');
  }
}