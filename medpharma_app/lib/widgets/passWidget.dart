import 'package:flutter/material.dart';

class PassWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.multiline,
      onChanged: (String value) {
        print(value);
      },
      onTap: () {
        print("tapped");
      },
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(112, 146, 146, 146))),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color:  Color.fromARGB(185, 200, 196, 196),
            width: 2,
          ),
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(10),
          // ),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: "Password",
        hintStyle: TextStyle(
          fontFamily: "Poppins",
          color: Color.fromARGB(141, 131, 127, 127),
          fontSize: 18,
        ),
      ),
    );
  }
}
