import 'package:flutter/material.dart';
import 'package:heph/pages/profile/about_us.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.indigo),
              ),
            ),
            ListTile(
              title: Text('Edit Profile'),
            ),
            Divider(),
            ListTile(
              title: Text(
                'General',
                style: TextStyle(color: Colors.indigo),
              ),
            ),
            ListTile(
              title: Text('Notifications'),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Information',
                style: TextStyle(color: Colors.indigo),
              ),
            ),
            ListTile(
              title: Text('Privacy Policy'),
            ),
            ListTile(
                title: Text('About Us'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUs()),
                  );
                }),
            ListTile(
              title: Text('Contact Us'),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text('Contact Us'),
                          content:
                              Text('You can email us at help@hephcreates.com'),
                        ));
              },
            ),
            Divider(),
            Spacer(),
            Text('Version 1.0.0'),
          ],
        ),
      ),
    );
  }
}
