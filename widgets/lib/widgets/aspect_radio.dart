import 'package:flutter/material.dart';

class MyAspectRadio extends StatelessWidget {
  const MyAspectRadio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 0.9,
          child: Image.network(
            'https://sites.google.com/site/indproductividadhumana/_/rsrc/1485997565094/home/1-1-comportamiento-organiacional/GTp8bpka3oo-eOKCbUNVpTl72eJkfbmt4t8yenImKBVvK0kTmF0xjctABnaLJIm9.jpg',
            // height: 200,
            // width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
