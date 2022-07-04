import 'package:flutter/material.dart';
import './notificationWidget.dart';
class NotificationScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Color.fromARGB(255, 223, 223, 223),
     body: NotificationWidget(),
   );
  }
}