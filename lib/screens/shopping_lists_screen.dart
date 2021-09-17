import 'package:flutter/material.dart';
import 'package:shopping_list/widgets/lists.dart';

class ShoppingListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight + 18),
          child: AppBar(
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.pending_actions),
                  text: 'Active lists',
                ),
                Tab(
                  icon: Icon(Icons.done),
                  text: 'Completed lists',
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Lists(true),
            Lists(false),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
