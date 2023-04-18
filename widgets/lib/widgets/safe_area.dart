import 'package:flutter/material.dart';

class MySafeArea extends StatelessWidget {
  const MySafeArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        child: SafeArea(
          child: Column(
            children: [
              const Text('Hello'),
              Expanded(
                child: Container(color: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
