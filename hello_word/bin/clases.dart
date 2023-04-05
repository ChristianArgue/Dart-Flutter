void main(List<String> args) {

  final lulu = Pet(
    name: 'lulu', 
    age: 5
  );

  final luna = Pet.fromBirthday(
    'Luna', 
    '2021-05-18'
  );

  print(luna);
  print(lulu);

  // lulu.name = 'Lulu';
  // lulu.age = 4;

  // print(lulu);

  // lulu.name.length;

  // final luluCopy = Pet();

  // luluCopy.name = 'Lulu';
  // luluCopy.age = 4;

  // print(lulu.hashCode);
  // print(luluCopy.hashCode);

  // print(lulu == luluCopy);
}

class Pet{
  String name;
  int age;

  Pet({
    required this.name, 
    required this.age
  });

  factory Pet.fromBirthday(String name, String birthdayAsString){
    
    final birthday = DateTime.parse(birthdayAsString);
    final currentDay = DateTime.now();
    
    final days = currentDay.difference(birthday).inDays;
    final age = (days/365).round();

    return Pet(name: name, age: age);
  }

  @override
  String toString(){
    return 'Name: $name, age: $age';
  }

  // @override
  // bool operator ==(Object other){
  //   if(hashCode != other.hashCode){
  //     return false;
  //   }
  //   if(other is Pet){
  //     return other.name == name && other.age == age;
  //   }
  //   return false; 
  // }

  // @override
  // int get hashCode{
  //   return name.hashCode^age.hashCode;
  // }
} 