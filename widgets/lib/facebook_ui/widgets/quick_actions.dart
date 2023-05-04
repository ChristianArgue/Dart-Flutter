import 'package:flutter/material.dart';
import 'package:widgets/facebook_ui/widgets/circule_buttom.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            _QuickButton(
              color: Color(0xff92be87),
              icon: Icons.photo,
              label: 'Gallery',
            ),
            SizedBox(
              width: 15,
            ),
            _QuickButton(
              color: Color(0xff2880d4),
              icon: Icons.people,
              label: 'Tag Friend',
            ),
            SizedBox(
              width: 15,
            ),
            _QuickButton(
              color: Color(0xfffb7171),
              icon: Icons.video_camera_front,
              label: 'Live',
            ),
          ],
        ),
      ),
    );
  }
}

class _QuickButton extends StatelessWidget {
  const _QuickButton({
    required this.icon,
    required this.color,
    required this.label,
  });

  final IconData icon;
  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleButtom(
            color: color.withOpacity(0.6),
            icon: icon,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            label,
            style: TextStyle(color: color),
          )
        ],
      ),
    );
  }
}
