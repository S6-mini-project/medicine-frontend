import 'package:flutter/material.dart';
import './usernameWidget.dart';
import './passWidget.dart';
class LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(55),
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height*.4,
          // height: 100,
        ),
        SizedBox(
          height:  MediaQuery.of(context).size.height*.15,
          //  height: 100,
          child: UsernameWidget(),
        ),
        SizedBox(
          // height:  MediaQuery.of(context).size.height*.4,
          //  height: 100,
          child: PassWidget(),
        )
      ],
    );
  }
}