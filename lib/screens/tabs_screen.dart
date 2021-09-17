import 'package:flutter/material.dart';
import 'package:shopping_list/screens/notification_screen.dart';
import 'package:shopping_list/screens/profile_screen.dart';
import 'package:shopping_list/screens/shopping_lists_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedIndex = 0;

  final screens = [
    {
      'page': ShoppingListScreen(),
      'title': 'Lists',
    },
    {
      'page': NotificationScreen(),
      'title': 'Notifications',
    },
    {
      'page': ProfileScreen(),
      'title': 'Profile',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screens[_selectedIndex]['title'] as String),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30,
            ),
          )
        ],
        elevation: 0,
      ),
      body: screens[_selectedIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() => _selectedIndex = index),
        currentIndex: _selectedIndex,
        iconSize: 30,
        selectedItemColor: Theme.of(context).accentColor,
        backgroundColor: Colors.blueGrey[50],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Lists'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
