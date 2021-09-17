import 'package:shopping_list/screens/shopping_lists_screen.dart';

import './user.dart';

class ShoppingList {
  final String id;
  final String title;
  final DateTime createAt;
  final User owner;
  List<User>? sharedWith = List.empty();
  bool? isCompleted = false;

  ShoppingList({
    required this.id,
    required this.title,
    required this.createAt,
    required this.owner,
    this.sharedWith,
  });
}
