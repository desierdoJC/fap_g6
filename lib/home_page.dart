import 'package:flutter/material.dart';
import 'package:fap_g6/store/item_prod.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TigerHub Madness' ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Scrollbar(
              thumbVisibility: _isAlwaysShown,
              trackVisibility: _showTrackOnHover,
              thickness: 10.0,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) => MyItem(index),
              ),
            ),
          ),
          Divider(height: 1),
        ],
      ),
    );
  }
}