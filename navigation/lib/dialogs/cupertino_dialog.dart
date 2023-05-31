import 'package:flutter/cupertino.dart';

Future<bool> showDialogWithCupertinoStyle(
  BuildContext context, {
  String title = '',
  String content = '',
}) async {
  final result = await showCupertinoDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) => CupertinoAlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        CupertinoDialogAction(
          child: const Text('No'),
          onPressed: () {
            Navigator.pop(context, false);
          },
        ),
        CupertinoDialogAction(
          child: const Text('Yes'),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      ],
    ),
  );
  return result ?? false;
}
