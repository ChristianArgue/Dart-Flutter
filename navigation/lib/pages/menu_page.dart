import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../routes.dart';
import 'login_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  void _onTap(BuildContext context) {
    final faker = Faker();
    final email = faker.internet.email();
    final route = MaterialPageRoute(
        settings: const RouteSettings(name: '/login'),
        builder: (_) => LoginPage(email: email));
    Navigator.push(context, route);
    // Navigator.pushReplacement(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListTile(
            onTap: () => _onTap(context),
            title: const Text('Go to Login'),
            trailing: const Icon(Icons.arrow_right_alt_outlined),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(
                context,
                Routes.counter,
              );
            },
            title: const Text('Go to Counter'),
            trailing: const Icon(Icons.arrow_right_alt_outlined),
          ),
        ],
      ),
    );
  }
}
