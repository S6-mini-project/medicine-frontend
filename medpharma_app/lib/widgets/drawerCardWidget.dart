import 'package:flutter/material.dart';

class DrawerCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        radius: 42,
        child: Icon(Icons.person_outline, color: Colors.white, size: 45),
      ),
      title: Text('amar',
          style: TextStyle(
            fontSize: 25.0,
            fontFamily: "poppins",
            fontWeight: FontWeight.bold,
          )),
      subtitle: Text(
        'Welcome Amarjith.',
        style: TextStyle(
          fontFamily: "poppins",
          fontWeight: FontWeight.bold,
        ),
      ),
      contentPadding: EdgeInsets.all(2),
    );
  }
}
