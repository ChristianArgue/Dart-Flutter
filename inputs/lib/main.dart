import 'package:flutter/material.dart';
import 'package:inputs/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final focus = FocusScope.of(context);
        final focusedChild = focus.focusedChild;
        if (focusedChild != null && !focusedChild.hasPrimaryFocus) {
          focusedChild.unfocus();
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const HomePage(),
        routes: appRoutes,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final routes = appRoutes.keys.toList();

    return Scaffold(
      body: ListView.builder(
        itemCount: routes.length,
        itemBuilder: (BuildContext context, int index) {
          final routeName = routes[index];
          return ListTile(
            onTap: () {
              Navigator.pushNamed(context, routeName);
            },
            title: Text(routeName),
          );
        },
      ),
    );
  }
}
