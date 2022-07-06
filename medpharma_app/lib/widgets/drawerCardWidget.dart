import 'package:flutter/material.dart';
import '../api/user_profile.dart';
// class DrawerCardWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

class DrawerCardWidget extends StatefulWidget {
  const DrawerCardWidget({Key? key}) : super(key: key);
  @override
  State<DrawerCardWidget> createState() => _DrawerCardState();
}

class _DrawerCardState extends State<DrawerCardWidget> {
  String Name = ' ';

  void callInit() async {
    await getProfile();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // callInit();
  }

  @override
  Widget build(BuildContext context) {
    getProfile().then((value) {
      if (value) {
        print(user_name);
      }
    });

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        radius: 42,
        child: Icon(Icons.person_outline, color: Colors.white, size: 45),
      ),
      title: Text(user_name,
          style: TextStyle(
            color: Colors.green,
            fontSize: 25.0,
            fontFamily: "poppins",
            fontWeight: FontWeight.bold,
          )),
      subtitle: Text(
        'Welcome ' + user_name,
        style: TextStyle(
          color: Colors.blueAccent,
          fontFamily: "poppins",
          fontWeight: FontWeight.bold,
        ),
      ),
      contentPadding: EdgeInsets.all(2),
    );
  }
}
