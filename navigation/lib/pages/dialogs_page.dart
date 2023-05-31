import 'package:flutter/material.dart';
import 'package:navigation/dialogs/bottom_sheet_dialog.dart';
import 'package:navigation/dialogs/confirm_dialog.dart';
import 'package:navigation/dialogs/cupertino_dialog.dart';
import 'package:navigation/dialogs/custom_dialog.dart';

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
              // ignore: avoid_print
              print(isOK);
            },
          ),
          ListTile(
            title: const Text('Show Cupertino Dialog'),
            onTap: () async {
              final isOK = await showDialogWithCupertinoStyle(context,
                  title: 'Are you sure?');
              // showDialogWithCupertinoStyle(
              //   context,
              //   title: 'Are you sure?',
              //   content: 'Fine',
              // );
              // ignore: avoid_print
              print(isOK);
            },
          ),
          ListTile(
            title: const Text('Show BottomSheet Dialog'),
            onTap: () async {
              showBottomSheetDialog(context);
            },
          ),
          ListTile(
            title: const Text('Show Custom Dialog'),
            onTap: () {
              showCustomDialog(context);
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
