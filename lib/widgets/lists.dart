import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../screens/list_items_screen.dart';

class Lists extends StatelessWidget {
  final bool isActiveList;

  Lists(this.isActiveList);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      children: [
        ListsItem(),
        ListsItem(),
        ListsItem(),
      ],
    );
  }
}

class ListsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Theme.of(context).accentColor,
      splashColor: Theme.of(context).accentColor,
      onTap: () => Navigator.of(context).pushNamed(ListItemsScreen.routeName),
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://scontent.ftxl2-1.fna.fbcdn.net/v/t1.6435-1/p200x200/241850395_10158815283881501_8023373041470916660_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeHj7tX-GRKilMXbSxHb-2T_WfqUJcyl__JZ-pQlzKX_8r-8BdWe533bI4ytUKREY0I&_nc_ohc=smjlHLuoESIAX9VWKp6&tn=weIIn2NMcUeucZcs&_nc_ht=scontent.ftxl2-1.fna&oh=8d4a4ab3b99694894dd67a92332ff07b&oe=616AD9E3")),
          title: Text(
            "Talabat el 2sbo3",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
          ),
          subtitle: Text(DateFormat('dd/MM/yyyy hh:mm').format(DateTime.now())),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
