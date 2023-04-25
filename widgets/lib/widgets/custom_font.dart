import 'package:flutter/material.dart';

class CustomFontPage extends StatelessWidget {
  const CustomFontPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(15),
          children: const [
            Text(
              '''
Id tempor proident incididunt eiusmod proident velit sunt laboris. 
Sint fugiat id mollit ut esse mollit. Occaecat elit duis ad mollit. 
Ad excepteur sint adipisicing elit. Tempor eu sint mollit amet. 
Lorem officia nostrud non est est ipsum reprehenderit veniam culpa ex nisi sit proident.
''',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
