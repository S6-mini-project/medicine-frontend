import 'package:flutter/material.dart';
import '../api/login.dart';

class SignupWidget extends StatefulWidget {
 
  @override
 _SignupWidgetState createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  bool unameCheck = true;
  bool ueCheck = true;
  bool passCheck = true;
  bool cpassCheck = true;

  final unameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final cpassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/register.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 80),
              child: Text(
                'Create User \nAccount',
                style: TextStyle(color: Colors.white, fontSize: 33,fontFamily: "poppins",fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            controller: unameController,
                            style: TextStyle(color: Colors.white,fontFamily: "poppins",),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.blueAccent,
                                      width: 2
                                  ),
                                ),
                                hintText: "Name",
                                  errorText: unameCheck ? null : 'username cannot be empty',
                                hintStyle: TextStyle(color: Colors.white,fontFamily: "poppins",),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                               controller : emailController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.blueAccent,
                                      width: 2
                                  ),
                                ),
                                hintText: "Email",
                                  errorText: ueCheck ? null : 'Email cannot be empty',
                                hintStyle: TextStyle(color: Colors.white,fontFamily: "poppins",),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            controller: passController,
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.blueAccent,
                                      width: 2
                                  ),
                                ),
                                hintText: "Password",
                                  errorText: passCheck ? null : 'password cannot be empty',
                                hintStyle: TextStyle(color: Colors.white,fontFamily: "poppins",),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                            SizedBox(
                            height: 30,
                          ),
                          TextField(
                            controller: cpassController,
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.blueAccent,
                                      width: 2
                                  ),
                                ),
                                hintText: "Confirm Password",
                                   errorText: cpassCheck ? null : 'password cannot be empty',
                                hintStyle: TextStyle(color: Colors.white,fontFamily: "poppins",),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.w700,fontFamily: "poppins",),
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xff4c505b),
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                            _validateSignup();
                                  },
                                    icon: Icon(
                                      Icons.arrow_forward,
                                    )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlatButton(
                onPressed: () {
              
                  Navigator.pushNamed(context, '/login');
                },
                color: Colors.lightBlue[200],
                splashColor: Color.fromARGB(208, 0, 0, 0),
                highlightColor: Color.fromARGB(96, 108, 105, 105),
                padding: EdgeInsets.all(10),
                shape: StadiumBorder(),
                child: Text(
                  "login",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: "poppins",
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
 void _validateSignup() {
    String id = emailController.text;
    String name = unameController.text;
    String pass = passController.text;
    String cpass = cpassController.text;
    setState(() {
      ueCheck = true;
      passCheck = true;
      unameCheck = true;
      cpassCheck = true;
    });
    if (id.isEmpty) {
      setState(() {
        ueCheck = false;
      });
    } else if (pass.isEmpty) {
      setState(() {
        passCheck = false;
      });
    } else if (name.isEmpty) {
      setState(() {
        unameCheck = false;
      });
    }
    else if (cpass.isEmpty) {
      setState(() {
        cpassCheck = false;
      });
    }
     else {
      signup(name,id,pass,cpass).then((value) {
        if (value) {
          print('signed up success');
              Navigator.pushNamed(context, '/login');
        }
      });
    }
  }
}

