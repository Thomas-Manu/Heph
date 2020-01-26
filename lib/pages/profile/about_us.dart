import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //   image: AssetImage('images/about_us.jpg'),
        //   fit: BoxFit.cover,
        // )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Text(
              'Heph',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            Spacer(),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ididuntut labore dolore magna aliq enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip exea commodoonsequat. Duis aute irure dolor rehenderit voluptate velitesse cillum dolore eu fugiat nulla pariatur.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
