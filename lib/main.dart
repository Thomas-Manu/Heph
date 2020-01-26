import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:heph/pages/explore.dart';
import 'package:heph/pages/home.dart';
import 'package:heph/pages/profile/profile.dart';
import 'package:heph/pages/saved/saved.dart';

void main() => runApp(HephApp());

class HephApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heph',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: [Home(), Explore(), Saved(), Profile()],
        index: _index,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CommunityMaterialIcons.home_outline),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(CommunityMaterialIcons.view_dashboard_outline),
            title: Text("Explore"),
          ),
          BottomNavigationBarItem(
            icon: Icon(CommunityMaterialIcons.heart_outline),
            title: Text("Saved"),
          ),
          BottomNavigationBarItem(
            icon: Icon(CommunityMaterialIcons.account_outline),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
