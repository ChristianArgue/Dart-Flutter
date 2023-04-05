void main(List<String> args) {
  
  final birthday = DateTime(1997, 9, 24);

  print(birthday);

  print(calcularEdad(
    birthday: birthday,
    precision: 1,
    round: true
  ));

  print(calcularEdad(
    birthday: DateTime(2000, 6, 28), 
    precision: 2,
    round: true
  ));

}


double calcularEdad({
  required DateTime birthday, 
  required int precision, 
  bool? round
  }){
  final currrent = DateTime.now();
  final days = currrent.difference(birthday).inDays;
  final age = days / 365;
  // print(age);
  if(round!){
    return age.roundToDouble();
  }
  return double.parse(age.toStringAsFixed(precision));
}