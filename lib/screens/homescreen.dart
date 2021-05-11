import 'package:card_swipe_demo/layoutmodules/swipecard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Swipe Card Demo'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.grid_on),
          onPressed: () {
            Navigator.of(context).pushNamed('/gridScreen');
          },
        ),
        body: Center(
          child: SwipableCard(),
        ));
  }
}
