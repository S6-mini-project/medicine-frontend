import 'package:flutter/material.dart';
import './orderWidget.dart';
import './homeScreen.dart';
import './drawerCardWidget.dart';
class OrderScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
      body: OrderWidget(),
      backgroundColor: Color.fromARGB(255, 6, 23, 52),
      );
  }
}

