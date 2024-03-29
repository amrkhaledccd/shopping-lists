import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).accentColor,
            ),
            child: CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  "https://scontent.ftxl2-1.fna.fbcdn.net/v/t1.6435-1/p200x200/241850395_10158815283881501_8023373041470916660_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeHj7tX-GRKilMXbSxHb-2T_WfqUJcyl__JZ-pQlzKX_8r-8BdWe533bI4ytUKREY0I&_nc_ohc=smjlHLuoESIAX9Z-kZ0&tn=weIIn2NMcUeucZcs&_nc_ht=scontent.ftxl2-1.fna&oh=10c1ffbde0b4670fdaa2c5b29f911df0&oe=6166E563"),
            ),
          ),
          Text(
            "Amr Khaled",
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            "@amrkhaled",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 10),
          ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Add friend')),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
