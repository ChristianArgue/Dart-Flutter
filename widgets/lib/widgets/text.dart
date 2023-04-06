import 'package:flutter/material.dart';

class MyText extends StatelessWidget{
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: DefaultTextStyle(
        style: TextStyle(), 
        child: Text(
          'Consequat sint aliqua fugiat et. Velit aute ad mollit qui irure esse ex aliqua culpa ut est elit sint laborum.',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

}