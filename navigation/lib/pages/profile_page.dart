import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.popUntil(context, (route) {
              final name = route.settings.name;
              if (name == 'home') {
                return true;
              } else {
                return false;
              }
            });
          },
          child: const Text('Log Out'),
        ),
      ),
    );
  }
}
