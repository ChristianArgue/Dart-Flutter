import 'package:flutter/material.dart';
import 'package:widgets/facebook_ui/models/story.dart';

final _stories = [
  Story(
    bg: 'assets/wallpapers/1.jpeg',
    avatar: 'assets/users/1.jpeg',
    userName: 'Laura',
  ),
  Story(
    bg: 'assets/wallpapers/2.jpeg',
    avatar: 'assets/users/2.jpeg',
    userName: 'Pepe',
  ),
  Story(
    bg: 'assets/wallpapers/3.jpeg',
    avatar: 'assets/users/3.jpeg',
    userName: 'Lili',
  ),
  Story(
    bg: 'assets/wallpapers/4.jpeg',
    avatar: 'assets/users/4.jpeg',
    userName: 'Christian',
  ),
  Story(
    bg: 'assets/wallpapers/5.jpeg',
    avatar: 'assets/users/5.jpeg',
    userName: 'Mario',
  ),
];

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _stories.length,
        itemBuilder: (_, index) {
          final story = _stories[index];
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: 80,
            height: double.infinity,
            color: Colors.grey,
          );
        },
      ),
    );
  }
}
