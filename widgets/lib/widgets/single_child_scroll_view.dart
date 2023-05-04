import 'package:flutter/material.dart';

class SingleChildScrollViewPage extends StatelessWidget {
  SingleChildScrollViewPage({Key? key}) : super(key: key);

  final listaColores = List.generate(
    18,
    (index) => Container(
      height: 100,
      width: 100,
      color: Colors.primaries[index],
      alignment: Alignment.center,
      child: Text('$index'),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: listaColores,
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                child: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(),
                        ),
                        ...listaColores
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
