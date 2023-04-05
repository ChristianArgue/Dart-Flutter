void main(List<String> args) {
  Map<String, String> users = {};
  users['user1'] = 'Darwin';
  print(users);
  users['user2'] = 'Pepe';
  print(users);
  users['user1'] = 'Santiago';
  print(users);
  final remove = users.remove('user2');
  print(remove);
  print(users); 
}