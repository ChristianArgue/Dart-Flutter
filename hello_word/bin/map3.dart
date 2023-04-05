void main(List<String> args) {
  final user = <String, dynamic>{
    'name'    : 'Darwin',
    'lastName': 'Morocho',
    'age'     : 28,
    'email'   :'test@test.com',
    'salary'  : 1000.99,
    'enabled' : true,
    'location': {
      'country'    : 'Ecuador',
      'countryCode': 'EC',
      'city'       : 'Cayambe'
    },
    'pets': [
      {
        'name': 'Lulu',
        'age' : 4
      },
      {
        'name': 'Osa',
        'age' : 9
      }
    ]
  };

  // print(user.runtimeType);
  print('Age: ${user['age']}');
  print('Email: ${user['email']}');
  // final location = user['location'];
  // final country = (location as Map<String, String>)['country'];
  // print('country: $country');
  print('Country: ${user['location']['country']}');
}