import 'package:flutter/material.dart';

class UsernameWidget extends StatelessWidget {
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
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: "Username",
              hintStyle: TextStyle(
                color: Color.fromARGB(255, 124, 121, 121),
                fontFamily: "Poppins",
              ),
              labelText: "Username",
              labelStyle: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
              ),
              helperStyle: TextStyle(
                fontFamily: "Poppins",
              ),
          ),
        );
  }
}