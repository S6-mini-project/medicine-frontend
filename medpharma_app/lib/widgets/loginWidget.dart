import 'package:flutter/material.dart';
import 'package:medpharma_app/app.dart';
import '../api/login.dart';
import './loginImgWidget.dart';
import '../app.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  bool ueCheck = true;
  bool passCheck = true;

  final emailController = TextEditingController();
  final passController = TextEditingController();
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(50),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .45,
            child: LoginImgWidget(),
          ),
          //login widget
          SizedBox(
              height: MediaQuery.of(context).size.height * .12,

              // child: UsernameWidget(),
              child: TextField(
                controller: emailController,
                keyboardType: TextInputType.multiline,
                // onChanged: (String value) {
                //   print(value);
                // },
                onTap: () {
                  print("tapped");
                },
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(112, 146, 146, 146)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(185, 200, 196, 196),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Email",
                  errorText: ueCheck ? null : 'Email cannot be empty',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(141, 131, 127, 127),
                    fontFamily: "Poppins",
                    fontSize: 18,
                  ),
                  helperStyle: TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
              )),

          // login finished

          SizedBox(
            // child: PassWidget(),
            child: TextField(
              controller: passController,
              keyboardType: TextInputType.multiline,
              onChanged: (String value) {
                print(value);
              },
              onTap: () {
                print("tapped");
              },
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(112, 146, 146, 146))),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(185, 200, 196, 196),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Password",
                errorText: passCheck ? null : 'Password cannot be empty',
                hintStyle: TextStyle(
                  fontFamily: "Poppins",
                  color: Color.fromARGB(141, 131, 127, 127),
                  fontSize: 18,
                ),
              ),
            ),
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
                        _validateLogin();
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
          SizedBox(height: MediaQuery.of(context).size.height * .03),
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
                color: Color.fromARGB(255, 228, 222, 222),
                splashColor: Color.fromARGB(208, 0, 0, 0),
                highlightColor: Color.fromARGB(96, 108, 105, 105),
                padding: EdgeInsets.all(10),
                shape: StadiumBorder(),
                child: Text(
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
          ))
        ],
      ),
    );
  }

  //validation method
  void _validateLogin() {
    String id = emailController.text;
    String pass = passController.text;
    setState(() {
      ueCheck = true;
      passCheck = true;
    });
    if (id.isEmpty) {
      setState(() {
        ueCheck = false;
      });
    } else if (pass.isEmpty) {
      setState(() {
        passCheck = false;
      });
    } else {
      login(id, pass).then((value) {
        if (value) {
          print('Authenticated');
          print(refresh_token);
          print(access_token);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyNavigationBar()));

        }
      });
    }
  }
}
