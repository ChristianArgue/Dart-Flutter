import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({
    super.key,
    this.initialValue = 0,
  });

  final int initialValue;

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  late int count;

  @override
  void initState() {
    super.initState();
    count = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          '$count',
          style: const TextStyle(fontSize: 40),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
