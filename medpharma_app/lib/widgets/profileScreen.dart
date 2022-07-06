import 'package:flutter/material.dart';
import './profileWidget.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 23, 52),
      body: ProfileWidget(
        primaryColor: Colors.lightBlue,
        image: AssetImage('assets/call-doctor.png')
      ),
    );
  }
}



