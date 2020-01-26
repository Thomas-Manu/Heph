import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:heph/pages/profile/settings.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: <Widget>[
          IconButton(
            icon: Icon(CommunityMaterialIcons.settings_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title: Text(
                'Heph Creates',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(CommunityMaterialIcons.account_outline),
              title: Text('Senga Rutebuka'),
            ),
            Divider(),
            ListTile(
              leading: Icon(CommunityMaterialIcons.phone_outline),
              title: Text('(240) 461-8449'),
              onTap: () {
                // Place a phone call
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(CommunityMaterialIcons.map_marker_outline),
              title: Text('12501 Old Columbia Pike, Silver Spring, MD 20904'),
              onTap: () {
                // Open maps
              },
            ),
            Divider(),
            ListTile(
              title: Text('Gallery'),
              trailing: FlatButton(
                child: Text('View All'),
                onPressed: () {
                  // View All
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
