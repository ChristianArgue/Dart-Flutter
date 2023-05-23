import 'package:flutter/material.dart';
import 'package:navigation/dialogs/confirm_dialog.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Show Dialogs'),
            onTap: () async {
              await showDialog(
                context: context,
                builder: (context) => const DialogContent(),
              );
            },
          ),
          ListTile(
            title: const Text('Show Confirm Dialogs'),
            onTap: () async {
              final isOK =
                  await showConfirmDialog(context, title: 'Are you sure?');
              print(isOK);
            },
          ),
        ],
      ),
    );
  }
}

class DialogContent extends StatelessWidget {
  const DialogContent({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const Text('MY Dialog'),
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
