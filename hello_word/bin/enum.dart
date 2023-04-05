void main(List<String> args) {
  print(Status.values);

  for(final s in Status.values){
    print(s);
    print(s.index);
    print(s.name);
  }
}

enum Status{
  create,
  ready,
  onTheWay,
  delivered
}