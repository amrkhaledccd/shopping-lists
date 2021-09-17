import 'package:flutter/material.dart';

import '../widgets/profile_card.dart';
import '../widgets/friends_grid_view.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          ProfileCard(),
          Expanded(child: FriendsGridView()),
        ],
      ),
    );
  }
}
