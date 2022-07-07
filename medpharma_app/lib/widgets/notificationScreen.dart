import 'package:flutter/material.dart';
import './notificationWidget.dart';
class NotificationScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: NotificationWidget(),
     backgroundColor: Color.fromARGB(255, 0, 17, 45),
   );
  }
}