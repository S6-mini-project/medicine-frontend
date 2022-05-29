import 'package:flutter/material.dart';
import './orderScreen.dart';
import './drawerCardWidget.dart';
import './orderScreen.dart';
import 'package:percent_indicator/percent_indicator.dart';
import './stockStatusWidget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        children: [
          Text(
            'Home Page',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontFamily: "poppins",
            ),
          ),
          StockStatusWidget(),
          StockStatusWidget(),
          StockStatusWidget(),
          StockStatusWidget(),
          StockStatusWidget()
        ],
      ),
    ));
  }
}
