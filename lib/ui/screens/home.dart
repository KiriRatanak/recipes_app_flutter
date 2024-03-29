import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _iconSize = 20;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2.0,
          bottom: TabBar(
            labelColor: Theme.of(context).indicatorColor,
            tabs: [
              Tab(icon: Icon(Icons.restaurant, size: _iconSize)),
              Tab(icon: Icon(Icons.local_drink, size: _iconSize)),
              Tab(icon: Icon(Icons.favorite, size: _iconSize)),
              Tab(icon: Icon(Icons.settings, size: _iconSize))
            ]),
        ),
        body: Padding(
          padding: EdgeInsets.all(5),
          child: TabBarView(
            children: <Widget>[
              Center(child: Icon(Icons.restaurant)),
              Center(child: Icon(Icons.local_drink)),
              Center(child: Icon(Icons.favorite)),
              Center(child: Icon(Icons.settings))
            ],
          ),
        )),
    );
  }
}
