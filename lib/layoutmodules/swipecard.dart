import 'package:card_swipe_demo/utilities/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';
import 'package:toast/toast.dart';

class SwipableCard extends StatefulWidget {
  @override
  _SwipableCardState createState() => _SwipableCardState();
}

class _SwipableCardState extends State<SwipableCard> {
  List<Card> cards = [
    Card(cardListData[0]['color']),
    Card(cardListData[1]['color']),
    Card(cardListData[2]['color']),
    Card(cardListData[0]['color']),
    Card(cardListData[1]['color']),
    Card(cardListData[2]['color']),
    Card(cardListData[0]['color']),
    Card(cardListData[1]['color']),
    Card(cardListData[2]['color']),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.65,
      child: Stack(children: cards),
    );
  }
}

class Card extends StatelessWidget {
  final Color color;
  Card(this.color);

  @override
  Widget build(BuildContext context) {
    return Swipable(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: color,
        ),
      ),
      onSwipeLeft: (finalPosition) {
        showMessage('Left Swipe', context);
      },
      onSwipeRight: (finalPosition) {
        showMessage('Right Swipe', context);
      },
    );
  }

  void showMessage(String message, BuildContext context) {
    Toast.show(message, context,
        duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
  }
}
