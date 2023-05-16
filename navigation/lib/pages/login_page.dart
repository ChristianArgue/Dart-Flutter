import 'package:flutter/material.dart';
import 'package:navigation/pages/profile_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.email});
  final String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // leading: IconButton(
          //   icon: const Icon(Icons.arrow_back),
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          // ),
          ),
      body: SafeArea(
          child: Column(
        children: [
          MaterialButton(
            onPressed: () {
              final route = MaterialPageRoute(
                builder: (_) => const ProfilePage(),
                settings: const RouteSettings(name: '/profile'),
              );
              Navigator.push(context, route);
            },
            child: Text('Login Page: $email'),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (_, index) {
                return Container(
                  height: 70,
                  color: Colors.primaries[index],
                );
              },
              itemCount: Colors.primaries.length,
            ),
          )
        ],
      )),
    );
  }
}
