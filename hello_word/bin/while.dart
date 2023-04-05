void main(List<String> args) {
  
  int index = 51;

  // while(index <= 10){
  //   print(index);
  //   index++;
  // }

  while(index <= 100){
    print(index);
    if(index % 70 == 0){
      print('🔥');
      break;
    }
    index++;
  }
  
  print('😅');
}