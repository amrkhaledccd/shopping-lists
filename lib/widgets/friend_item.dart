import 'package:flutter/material.dart';

class FriendItem extends StatelessWidget {
  final String name;
  final String imageUrl;

  FriendItem(this.name, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  topLeft: Radius.circular(8),
                ),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  softWrap: true,
                  maxLines: 2,
                ),
              ),
            )
          ],
        ));
  }
}
