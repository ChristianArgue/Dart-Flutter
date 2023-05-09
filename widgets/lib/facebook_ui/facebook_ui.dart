import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:faker/faker.dart';
import 'package:widgets/facebook_ui/models/publication.dart';
import 'package:widgets/facebook_ui/widgets/publication_item.dart';

import 'package:widgets/facebook_ui/widgets/quick_actions.dart';
import 'package:widgets/facebook_ui/widgets/stories.dart';
import 'widgets/circule_buttom.dart';
import 'widgets/what_is_on_your_mind.dart';

class FacebookPage extends StatelessWidget {
  const FacebookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final facker = Faker();
    final publications = <Publication>[];
    for (int i = 0; i < 50; i++) {
      final random = faker.randomGenerator;
      const reactions = Reaction.values;
      final reactionIndex = random.integer(reactions.length - 1);

      final publication = Publication(
        user: Users(
          avatar: facker.image.image(),
          userName: faker.person.name(),
        ),
        title: facker.lorem.sentence(),
        createdAt: faker.date.dateTime(),
        imageUrl: faker.image.image(),
        commentsCount: random.integer(50000),
        sharedCount: random.integer(50000),
        currentUserReaction: reactions[reactionIndex],
      );

      publications.add(publication);
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: SvgPicture.asset(
          'assets/logos/facebook.svg',
          colorFilter: const ColorFilter.mode(
            Colors.blueAccent,
            BlendMode.srcIn,
          ),
        ),
        leadingWidth: 150,
        actions: const [
          CircleButtom(
            color: Color(0xffbfbfbf),
            icon: Icons.search,
          ),
          SizedBox(width: 15),
          CircleButtom(
            color: Color(0xfffe7574),
            icon: Icons.notifications,
          ),
          SizedBox(width: 15),
          CircleButtom(
            color: Color(0xff7bbaff),
            icon: Icons.people,
            showBadge: true,
          ),
          SizedBox(width: 15),
          CircleButtom(
            color: Color(0xff1c86e4),
            icon: Icons.messenger,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          const WhatIsOnYourMind(),
          const SizedBox(height: 30),
          const QuickActions(),
          const SizedBox(height: 30),
          const Stories(),
          const SizedBox(height: 30),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) => PublicationItem(
              publication: publications[index],
            ),
            itemCount: publications.length,
          )
        ],
      ),
    );
  }
}
