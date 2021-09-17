import 'package:flutter/material.dart';

import '../widgets/friend_item.dart';

class FriendsGridView extends StatelessWidget {
  final List<Map<String, String>> friends = [
    {
      'name': 'Mohamed Zeineldin',
      'image':
          'https://scontent.ftxl2-1.fna.fbcdn.net/v/t1.18169-1/c0.0.200.200a/p200x200/1002177_10201677155601325_1183923963_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeFIDmXNAFBGyxtpQkysYlsVpMEibAcoMtSkwSJsBygy1Jdc04ZmtyA2Qh8ZM4zwSTg&_nc_ohc=3o6nbjWgsUgAX9brl9H&tn=weIIn2NMcUeucZcs&_nc_ht=scontent.ftxl2-1.fna&oh=96918b3472a7219b7de9543722343058&oe=61695466'
    },
    {
      'name': 'Islam Taha',
      'image':
          'https://scontent.ftxl2-1.fna.fbcdn.net/v/t1.6435-1/84288232_10219596610919452_798066358809001984_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeHrxpEQRdQ_3YJ-MrVsb0WzzvBVQbGXFBPO8FVBsZcUE99QIYnWq2XmK9tmnkHRjUA&_nc_ohc=sc8lWbwFjhMAX9jreE9&_nc_ht=scontent.ftxl2-1.fna&oh=715b2a051b558aca2b7f92b0710fd635&oe=6168B2A2'
    },
    {
      'name': 'Ho Sam',
      'image':
          'https://scontent.ftxl2-1.fna.fbcdn.net/v/t39.30808-1/c0.0.200.200a/p200x200/241816442_10165982551360193_7449542126063465911_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeGJe8RFhw1TVTsy9NmEPn82ldHhywJqbU2V0eHLAmptTaPFYYP8773BetVDnbM2fLQ&_nc_ohc=eCcaLDwJ7IIAX_M_yFN&_nc_ht=scontent.ftxl2-1.fna&oh=fae1cb24e9b4d7e2cc1e56af292bdfee&oe=6147758E'
    },
    {
      'name': 'Mohammed Radwan',
      'image':
          'https://scontent.ftxl2-1.fna.fbcdn.net/v/t1.18169-1/s200x200/19400095_10158964001205192_4210739152696300922_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeEboM7LlprGGQ5SjmE3Js4DVbwAgc9nuhJVvACBz2e6EvuMVMTjiG6EVZD9-5AxB8A&_nc_ohc=BMpg6zq6vE4AX-kudxP&_nc_ht=scontent.ftxl2-1.fna&oh=2946146e9bb6f0b4f1268006f51aa4d0&oe=6168F4D2'
    },
    {
      'name': 'Ali Ezat',
      'image':
          'https://scontent.ftxl2-1.fna.fbcdn.net/v/t1.18169-1/p200x200/11693835_979336902099967_3809659292782766006_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeGIzmC9KWmPoKUOYoJwvG5uJUh2jMG0Nq4lSHaMwbQ2rvNVThPYMR-95Do-8YhzNwQ&_nc_ohc=lH1eIdHZrkIAX8XtTau&_nc_ht=scontent.ftxl2-1.fna&oh=4ef245714ca5f8cd9080b7ac4b91a181&oe=616A2799'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Friends',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '5 friends',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2 / 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemCount: friends.length,
                itemBuilder: (ctx, i) => FriendItem(
                    friends[i]['name'].toString(),
                    friends[i]['image'].toString()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
