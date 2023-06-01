import 'package:flutter/material.dart';

import '../routes.dart';

class PageData {
  final String name;
  final String label;
  final Object? argmunets;
  final void Function(Object?)? onResult;

  const PageData({
    required this.name,
    required this.label,
    this.argmunets,
    this.onResult,
  });
}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  Color _color = Colors.red;

  late final List<PageData> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      const PageData(
        name: Routes.login,
        label: 'Go to Login',
        argmunets: 'test@test.com',
      ),
      const PageData(
        name: Routes.counter,
        label: 'Go to Counter',
      ),
      PageData(
          name: Routes.pickColor,
          label: 'Go to PickColor',
          onResult: (result) {
            if (result is Color) {
              _color = result;
              setState(() {});
            }
          }),
      const PageData(
        name: Routes.dialogs,
        label: 'Go to Dialogs',
      ),
    ];
  }

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
            onTap: () async {
              final result = await Navigator.pushNamed(
                context,
                data.name,
                arguments: data.argmunets,
              );
              if (data.onResult != null) {
                data.onResult!(result);
              }
            },
          );
        },
        itemCount: _pages.length,
      ),
    );
  }
}
