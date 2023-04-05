void main(List<String> args) {
  // int weekDay = 3;
  final weekDay = DateTime.now().weekday;

  switch(weekDay){
    case 2:
    case 3:
    case 4:
      print('Working Day');
      break;
    case 6:
    case 7:
      print('Half Day');
      break;
    default:
      print('Invalid date');
  }
}