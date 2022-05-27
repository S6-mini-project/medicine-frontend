import 'package:flutter/material.dart';

class PassWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  TextField(
      keyboardType: TextInputType.multiline,
      onChanged: (String value) {
        print(value);
      },
      onTap: () {
        print("tapped");
      },
      decoration: InputDecoration(
       
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
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
          color: Color.fromARGB(255, 124, 121, 121),
        ),
        labelText: "Password",
        labelStyle: TextStyle(color: Colors.black, fontFamily: "Poppins"),
        
      ),
    );
  }
}