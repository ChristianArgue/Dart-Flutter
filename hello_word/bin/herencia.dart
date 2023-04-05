import 'models/animals.dart';
import 'models/pets.dart';

void main(List<String> args) {
  
  // final lazy = Dog(name: 'Lazy', age: 10, legs: 4);
  // final dory = Fish(name: 'Dory', age: 1, fins: 3);

  final dolphin = Dolphin();
  final bat = Bat();
  final cat = Cat();
  final dove = Dove();
  final duck = Duck();
  final shark = Shark();
  final flyingFish = FlyingFish();

  dolphin.swim();
  bat.fly();
  bat.walk();
  cat.walk();
  dove.fly();
  dove.walk();
  duck.fly();
  duck.swim();
  duck.walk();
  shark.swim();
  flyingFish.fly();
  flyingFish.swim();
  
}