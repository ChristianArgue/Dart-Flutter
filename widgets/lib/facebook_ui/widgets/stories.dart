import 'package:flutter/material.dart';

import 'package:widgets/facebook_ui/models/story.dart';
import 'package:widgets/facebook_ui/widgets/avatar.dart';

final _stories = [
  Story(
    bg: 'assets/wallpapers/1.jpeg',
    avatar: 'assets/users/1.jpg',
    userName: 'Laura',
  ),
  Story(
    bg: 'assets/wallpapers/2.jpeg',
    avatar: 'assets/users/2.jpg',
    userName: 'Pepe',
  ),
  Story(
    bg: 'assets/wallpapers/3.jpeg',
    avatar: 'assets/users/3.jpg',
    userName: 'Lili',
  ),
  Story(
    bg: 'assets/wallpapers/4.jpeg',
    avatar: 'assets/users/4.jpg',
    userName: 'Christian',
  ),
  Story(
    bg: 'assets/wallpapers/5.jpeg',
    avatar: 'assets/users/5.jpg',
    userName: 'Mario',
  ),
];

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _stories.length,
        itemBuilder: (_, index) {
          final story = _stories[index];
          return StoryItem(
            story: story,
            isFirst: index == 0,
          );
        },
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key,
    required this.story,
    required this.isFirst,
  });

  final Story story;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 90,
      margin: EdgeInsets.only(
        right: 15,
        left: isFirst ? 20 : 0,
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(story.bg),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Avatar(
                    size: 40,
                    asset: story.avatar,
                    borderWidth: 3,
                  ),
                )
              ],
            ),
          ),
          Text(
            story.userName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
