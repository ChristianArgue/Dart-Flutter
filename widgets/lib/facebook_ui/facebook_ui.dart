import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:widgets/facebook_ui/widgets/avatar.dart';
import 'package:widgets/facebook_ui/widgets/quick_actions.dart';
import 'package:widgets/facebook_ui/widgets/stories.dart';

import 'widgets/circule_buttom.dart';

class FacebookPage extends StatelessWidget {
  const FacebookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          SizedBox(
            width: 15,
          ),
          CircleButtom(
            color: Color(0xfffe7574),
            icon: Icons.notifications,
          ),
          SizedBox(
            width: 15,
          ),
          CircleButtom(
            color: Color(0xff7bbaff),
            icon: Icons.people,
            showBadge: true,
          ),
          SizedBox(
            width: 15,
          ),
          CircleButtom(
            color: Color(0xff1c86e4),
            icon: Icons.messenger,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: ListView(
        children: const [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Avatar(
                  size: 50,
                  asset: 'assets/users/1.jpg',
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: Text(
                    "What's on your mind, Christian?",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          QuickActions(),
          SizedBox(
            height: 25,
          ),
          Stories(),
        ],
      ),
    );
  }
}
