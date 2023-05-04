import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatelessWidget {
  const ListViewBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 1000,
        itemBuilder: (BuildContext context, int index) {
          // ignore: avoid_print
          print('Renderizado');
          return Container(
            height: 100,
            color: Colors.green,
            margin: const EdgeInsets.all(5),
            alignment: Alignment.center,
            child: const FlutterLogo(),
          );
        },
      ),
    );
  }
}
