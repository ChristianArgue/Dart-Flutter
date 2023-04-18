import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: DefaultTextStyle(
        style: const TextStyle(),
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Colors.yellow, Colors.blue, Colors.red],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.5, 0.75, 1]),
                boxShadow: [
                  BoxShadow(
                      color: Colors.blue.withOpacity(.4),
                      blurRadius: 10,
                      offset: const Offset(-10, 10)),
                  // BoxShadow(
                  //   color: Colors.red.withOpacity(.5),
                  //   blurRadius: 10
                  // ),
                ],
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: const Text(
              'Christian',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
