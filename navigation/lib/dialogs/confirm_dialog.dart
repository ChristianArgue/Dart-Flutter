import 'package:flutter/material.dart';

Future<bool> showConfirmDialog(
  BuildContext context, {
  String title = '',
}) async {
  final result = await showDialog<bool>(
    barrierDismissible: false,
    barrierColor: Colors.white.withOpacity(0.8),
    context: context,
    builder: (context) {
      return _DialogContent(
        title: title,
      );
    },
  );
  return result ?? false;
}

class _DialogContent extends StatelessWidget {
  const _DialogContent({required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: AlertDialog(
        // alignment: Alignment.bottomCenter,
        // backgroundColor: Colors.black12,
        // elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        actionsAlignment: MainAxisAlignment.center,
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: const Text(
              'Yes',
              style: TextStyle(color: Colors.green),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'No',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
