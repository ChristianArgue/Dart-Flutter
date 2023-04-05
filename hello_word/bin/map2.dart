void main(List<String> args) {
  var products = <int, String>{
    1: 'MackBook Pro',
    2: 'IPhone'
  };
  print(products);
  products[1] = "MackBook Pro 15'";
  products[5] = "IPad";
  print(products);
  products.remove(5);
  products.putIfAbsent(
    0, 
    (){
      return 'Mac Mini';
    });
  // if(products.containsKey(0) == false){
  //   products[0] = 'Mac Mini';
  // }
  print(products);
}