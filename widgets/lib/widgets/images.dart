import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyImagesPage extends StatelessWidget {
  const MyImagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 350,
          color: Colors.grey,

          /* Imagen desde Internet con cachedNetworkImage */

          child: CachedNetworkImage(
            imageUrl:
                "https://codigoespagueti.com/wp-content/uploads/2022/04/Dragon-Ball-Donde-estaria-la-casa-de-Goku-en-la-vida-real.jpg",
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),

          /* Imagen desde Internet */

          // child: Image.network(
          //   'https://codigoespagueti.com/wp-content/uploads/2022/04/Dragon-Ball-Donde-estaria-la-casa-de-Goku-en-la-vida-real.jpg',
          //   loadingBuilder: (_, child, event) {
          //     if (event == null) {
          //       return child;
          //     }
          //     return const Center(
          //       child: CircularProgressIndicator(),
          //     );
          //   },
          // ),

          /* Imagen desde Assets */

          // child: Image.asset(
          //   'assets/images/son_goku.png',
          //   // height: 100,
          //   // width: 300,
          // ),
        ),
      ),
    );
  }
}
