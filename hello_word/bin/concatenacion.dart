void main(List<String> args) {
  String name = 'Darwin';
  String lastName = 'Morocho';
  int age = 28;
  lastName.length;
  // String fullname = name + " " + lastName + " edad: " + age.toString();
  String fullname = '$name $lastName, edad: $age, length: ${lastName.length}';
  print(fullname);
}