import 'package:flutter/material.dart';

showBottomSheetDialog(BuildContext context) {
  showModalBottomSheet(
    // isScrollControlled: true,
    // backgroundColor: Colors.transparent,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    constraints: const BoxConstraints(
      maxWidth: double.infinity,
    ),
    context: context,
    builder: (context) => SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.photo),
            title: const Text('Photos'),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.music_note),
            title: const Text('Music'),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.video_camera_back_rounded),
            title: const Text('Video'),
          ),
        ],
      ),
    ),
  );
}
