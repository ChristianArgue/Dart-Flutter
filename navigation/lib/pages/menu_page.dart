import 'package:flutter/material.dart';

import '../routes.dart';

class PageData {
  final String name;
  final String label;
  final Object? argmunets;

  const PageData({
    required this.name,
    required this.label,
    this.argmunets,
  });
}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final Color _color = Colors.red;

  final _pages = const <PageData>[
    PageData(
      name: Routes.login,
      label: 'Go to Login',
      argmunets: 'test@test.com',
    ),
    PageData(
      name: Routes.counter,
      label: 'Go to Counter',
    ),
    PageData(
      name: Routes.pickColor,
      label: 'Go to PickColor',
    ),
    PageData(
      name: Routes.dialogs,
      label: 'Go to Dialogs',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          final data = _pages[index];
          return ListTile(
            trailing: const Icon(Icons.keyboard_double_arrow_right_rounded),
            title: Text(data.label),
            onTap: () {
              Navigator.pushNamed(
                context,
                data.name,
                arguments: data.argmunets,
              );
            },
          );
        },
        itemCount: _pages.length,
      ),
    );
  }
}
