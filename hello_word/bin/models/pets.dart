class Pet{
  
  final String name;
  final int age;

  const Pet({
    required this.name,
    required this.age
  });

}

class Dog extends Pet{

  final int legs;

  Dog({
    required String name, 
    required int age,
    required this.legs
  }):super(name: name, age: age);

  void run(){
    print('Runing');
  }

  void jump(){
    print('Jumping');
  }

}

class Fish extends Pet{

  final int fins;
  
  Fish({
    required String name, 
    required int age,
    required this.fins
  }):super(name: name, age: age);

  void swuim(){
    print('Swimming');
  }
}