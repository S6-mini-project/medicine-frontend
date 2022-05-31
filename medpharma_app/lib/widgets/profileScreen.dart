import 'package:flutter/material.dart';
import './profileWidget.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileWidget(
        primaryColor: Colors.lightBlue,
        image: AssetImage('assets/call-doctor.png')
      ),
    );
  }
}



