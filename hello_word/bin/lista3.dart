void main(List<String> args) {
  
  List<int> numbers = [1, 2, 3, 4];
  numbers = [...numbers, 10, 20];
  print(numbers);

  Map<String, dynamic> json = {
    'name': 'Darwin',
    'lastName': 'Morocho'
  };
  print(json);
  json = {
    ...json,
    'age': 23,
    'country': 'Ecuador'
  };
  print(json);
}