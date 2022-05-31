import 'package:flutter/material.dart';
import './usernameWidget.dart';
import './passWidget.dart';
import './loginImgWidget.dart';

class LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(50),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .45,
            // height: 100,
            child: LoginImgWidget(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .12,
            //  height: 100,
            child: UsernameWidget(),
          ),
          SizedBox(
            // height:  MediaQuery.of(context).size.height*.4,
            //  height: 100,
            child: PassWidget(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * .1,
              child: Row(
                children: [
                  Text(
                    "Sign in",
                    style: TextStyle(
                      color: Color.fromARGB(182, 27, 26, 26),
                      fontFamily: "Poppins",
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .21,
                  ),
                  FlatButton(
                    onPressed: () {
                      print("hii");
                        Navigator.pushNamed(context, '/home');  
                    },
                    onLongPress: () {
                      print("long press");
                    },
                    child: Icon(Icons.keyboard_arrow_right_rounded),
                    textColor: Colors.white,
                    color: Color.fromARGB(182, 27, 26, 26),
                    splashColor: Color.fromARGB(208, 0, 0, 0),
                    highlightColor: Colors.black38,
                    disabledTextColor: Colors.blueGrey,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ],
              )),
              SizedBox(
              height: MediaQuery.of(context).size.height * .03
            ) ,
          SizedBox(
            child: Column(
              children: [
                Text(
              "Dont have an account?",
              style: TextStyle(
                fontFamily: "poppins",
                color: Color.fromARGB(182, 27, 26, 26),
                fontWeight: FontWeight.w600,
              ),
            ),
            
            FlatButton(
              onPressed: () {
              print("sign up pressed");
            },
            color:  Color.fromARGB(255, 228, 222, 222),
            splashColor:  Color.fromARGB(208, 0, 0, 0),
             highlightColor: Color.fromARGB(96, 108, 105, 105),
            padding: EdgeInsets.all(10),
             shape: StadiumBorder(),
            child:  Text(
              "Sign up",
              style: TextStyle(
                fontFamily: "poppins",
                color: Color.fromARGB(182, 27, 26, 26),
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
              ),
            ),
            )
              ],
              
            ) 
          )
        ],
      ),
    );
  }
}
