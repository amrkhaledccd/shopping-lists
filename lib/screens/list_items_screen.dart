import 'package:flutter/material.dart';

class ListItemsScreen extends StatelessWidget {
  static final routeName = '/list-items';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Talabat el 2sbo3'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.done,
                size: 30,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shared with',
                  style: Theme.of(context).textTheme.headline2,
                ),
                TextButton(onPressed: () {}, child: Text('Add people'))
              ],
            ),
            Text(
              '8 people',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SharedWithItem('Amr Khaled',
                      'https://scontent.ftxl2-1.fna.fbcdn.net/v/t1.6435-1/p200x200/241850395_10158815283881501_8023373041470916660_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeHj7tX-GRKilMXbSxHb-2T_WfqUJcyl__JZ-pQlzKX_8r-8BdWe533bI4ytUKREY0I&_nc_ohc=smjlHLuoESIAX9VWKp6&tn=weIIn2NMcUeucZcs&_nc_ht=scontent.ftxl2-1.fna&oh=8d4a4ab3b99694894dd67a92332ff07b&oe=616AD9E3'),
                  SharedWithItem('Salma Mohammed',
                      'https://scontent.ftxl2-1.fna.fbcdn.net/v/t1.6435-1/p200x200/122530677_4728669083871017_6022528305344926168_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeED7SUFNr6URrJEKR3Okh1qG2DCt4SZtIIbYMK3hJm0ggOpi2DMrkf9stBzb_55GkQ&_nc_ohc=bQLZUsk5OtYAX_NqU0n&tn=weIIn2NMcUeucZcs&_nc_ht=scontent.ftxl2-1.fna&oh=0a702b5e3fa92b0b9f99134ad18eb2d8&oe=6167DE93'),
                  SharedWithItem('Ahmed Khaled',
                      'https://scontent.ftxl2-1.fna.fbcdn.net/v/t1.6435-1/s200x200/78402023_10158396807981412_5200086217172975616_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeEqK4OQuYTqiDSgfB8E6ZYuT9bn5ViEOnRP1uflWIQ6dPH6LetEidOuWcqYOu72HKE&_nc_ohc=fwAGVuRj_KUAX8k0u92&_nc_ht=scontent.ftxl2-1.fna&oh=448b964a6ca8d9cc54cae560395bb890&oe=616B070F'),
                  SharedWithItem('ayman Elwany',
                      'https://scontent.ftxl2-1.fna.fbcdn.net/v/t1.18169-1/p200x200/14184433_10154721898870166_1075248085723427639_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeFa24iBhdyIKY3vizYT7FMWTyPQHYvFd1BPI9Adi8V3UCuETRBofzSx0bQIFL90lZ4&_nc_ohc=3CdlFwwYK18AX9mGw-R&_nc_ht=scontent.ftxl2-1.fna&oh=aa8bffe1a3d2f4e20d2a96d421a7056a&oe=616A8FB5'),
                  SharedWithItem('Amr Khaled',
                      'https://scontent.ftxl2-1.fna.fbcdn.net/v/t1.6435-1/p200x200/241850395_10158815283881501_8023373041470916660_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeHj7tX-GRKilMXbSxHb-2T_WfqUJcyl__JZ-pQlzKX_8r-8BdWe533bI4ytUKREY0I&_nc_ohc=smjlHLuoESIAX9VWKp6&tn=weIIn2NMcUeucZcs&_nc_ht=scontent.ftxl2-1.fna&oh=8d4a4ab3b99694894dd67a92332ff07b&oe=616AD9E3'),
                  SharedWithItem('Salma Mohammed',
                      'https://scontent.ftxl2-1.fna.fbcdn.net/v/t1.6435-1/p200x200/122530677_4728669083871017_6022528305344926168_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeED7SUFNr6URrJEKR3Okh1qG2DCt4SZtIIbYMK3hJm0ggOpi2DMrkf9stBzb_55GkQ&_nc_ohc=bQLZUsk5OtYAX_NqU0n&tn=weIIn2NMcUeucZcs&_nc_ht=scontent.ftxl2-1.fna&oh=0a702b5e3fa92b0b9f99134ad18eb2d8&oe=6167DE93'),
                  SharedWithItem('Ahmed Khaled',
                      'https://scontent.ftxl2-1.fna.fbcdn.net/v/t1.6435-1/s200x200/78402023_10158396807981412_5200086217172975616_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeEqK4OQuYTqiDSgfB8E6ZYuT9bn5ViEOnRP1uflWIQ6dPH6LetEidOuWcqYOu72HKE&_nc_ohc=fwAGVuRj_KUAX8k0u92&_nc_ht=scontent.ftxl2-1.fna&oh=448b964a6ca8d9cc54cae560395bb890&oe=616B070F'),
                  SharedWithItem('ayman Elwany',
                      'https://scontent.ftxl2-1.fna.fbcdn.net/v/t1.18169-1/p200x200/14184433_10154721898870166_1075248085723427639_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeFa24iBhdyIKY3vizYT7FMWTyPQHYvFd1BPI9Adi8V3UCuETRBofzSx0bQIFL90lZ4&_nc_ohc=3CdlFwwYK18AX9mGw-R&_nc_ht=scontent.ftxl2-1.fna&oh=aa8bffe1a3d2f4e20d2a96d421a7056a&oe=616A8FB5'),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Theme.of(context).accentColor,
                      foregroundColor: Colors.white,
                      radius: 10,
                    ),
                    title: Text(
                      'Skimmed milk',
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: IconButton(
                        onPressed: () {}, icon: Icon(Icons.more_vert)),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Theme.of(context).accentColor,
                      foregroundColor: Colors.white,
                      radius: 10,
                    ),
                    title: Text(
                      '1Kg Chicken breast',
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: IconButton(
                        onPressed: () {}, icon: Icon(Icons.more_vert)),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Theme.of(context).accentColor,
                      foregroundColor: Colors.white,
                      radius: 10,
                    ),
                    title: Text(
                      '4 Chocolates',
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: IconButton(
                        onPressed: () {}, icon: Icon(Icons.more_vert)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}

class SharedWithItem extends StatelessWidget {
  final String name;
  final String imageUrl;

  SharedWithItem(this.name, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              imageUrl,
            ),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            softWrap: true,
            maxLines: 1,
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
