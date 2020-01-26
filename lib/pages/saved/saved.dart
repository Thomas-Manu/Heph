import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

class Saved extends StatefulWidget {
  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saved"),
        actions: <Widget>[
          IconButton(
            icon: Icon(CommunityMaterialIcons.magnify),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
