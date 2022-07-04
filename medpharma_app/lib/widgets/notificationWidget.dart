import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Container(
        //   height: MediaQuery.of(context).size.height * .5,
        //   width: MediaQuery.of(context).size.width,
        //   child: Image.asset(
        //     "assets/waves.png",
        //     fit: BoxFit.cover,
        //   ),
        // ),

        Text(
          textAlign: TextAlign.center,
          "Notifications",
          style: TextStyle(
            fontFamily: "poppins",
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Color.fromARGB(255, 81, 81, 81),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          // width: MediaQuery.of(context).size.width * .7,
          height: MediaQuery.of(context).size.height * .08,
          margin: EdgeInsets.all(10),
          child: Center(
            child: Text(
              "Paracetamol",
              style: TextStyle(
                fontFamily: "poppins",
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Colors.white,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 1),
              ),
            ],
          ),
        ),
        Container(
          // width: MediaQuery.of(context).size.width * .9,
          height: MediaQuery.of(context).size.height * .08,
          margin: EdgeInsets.all(10),
          child: Center(
            child: Text(
              "Paracetamol",
              style: TextStyle(
                fontFamily: "poppins",
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Colors.white,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 81, 81, 81),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 1),
              ),
            ],
          ),
        ),
        Container(
          // width: MediaQuery.of(context).size.width * .9,
          height: MediaQuery.of(context).size.height * .08,
          margin: EdgeInsets.all(10),
          child: Center(
            child: Center(
              child: Text(
                "Paracetamol",
                style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 81, 81, 81),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 1),
              ),
            ],
          ),
        ),
        Container(
          // width: MediaQuery.of(context).size.width * .9,
          height: MediaQuery.of(context).size.height * .08,
          margin: EdgeInsets.all(10),
          child: Center(
            child: Text(
              "Paracetamol",
              style: TextStyle(
                fontFamily: "poppins",
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Colors.white,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 81, 81, 81),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 1),
              ),
            ],
          ),
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height * .1,
            width: MediaQuery.of(context).size.width * .9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Go back",
                  style: TextStyle(
                    color: Color.fromARGB(182, 27, 26, 26),
                    fontFamily: "poppins",
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .21,
                ),
                FlatButton(
                  onPressed: () {
                    print("hii");
                    Navigator.pushNamed(context, '/orders');
                  },
                  onLongPress: () {
                    print("long press");
                  },
                  child: Icon(Icons.keyboard_arrow_left_rounded),
                  textColor: Colors.white,
                  color: Color.fromARGB(182, 27, 26, 26),
                  splashColor: Color.fromARGB(208, 0, 0, 0),
                  highlightColor: Colors.black38,
                  disabledTextColor: Colors.blueGrey,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(25),
                ),
              ],
            )),
      ],
    );
  }
}
