import 'package:flutter/material.dart';

import './screens/list_items_screen.dart';
import './screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping List',
      theme: ThemeData(
        primaryColor: Colors.deepOrange[700],
        accentColor: Colors.blue[300],
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 0.7),
          headline2: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          subtitle1: TextStyle(color: Colors.black45, fontSize: 18),
          subtitle2: TextStyle(color: Colors.black54, fontSize: 16),
        ),
      ),
      home: TabsScreen(),
      routes: {
        ListItemsScreen.routeName: (_) => ListItemsScreen(),
      },
    );
  }
}
