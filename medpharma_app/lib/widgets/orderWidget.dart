import 'package:flutter/material.dart';

class OrderWidget extends StatefulWidget {
  @override
  OrderWidgetState createState() => OrderWidgetState();
}

class OrderWidgetState extends State {
  bool viewVisible = true;

  void showWidget() {
    setState(() {
      viewVisible = true;
    });
  }

  void hideWidget() {
    setState(() {
      viewVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          SizedBox(
            height: 60,
            child: Row(
              children: [
                Text(
                  "All Orders",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "poppins",
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    print("icon button pressed");
                    hideWidget();
                  },
                  splashRadius: 23,
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                    size: 35,
                  ),
                  padding:
                      EdgeInsets.only(top: 10, right: 10, left: 7, bottom: 15),
                ),
                 IconButton(
                  onPressed: () {
                    print("icon button pressed");
                    showWidget();
                  },
                  splashRadius: 23,
                  icon: Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.black,
                    size: 35,
                  ),
                  padding:
                      EdgeInsets.only(top: 10, right: 10, left: 7, bottom: 15),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: viewVisible,
            child: Container(
              height: MediaQuery.of(context).size.height * .21,
              padding: EdgeInsets.only(left: 20, top: 20),
              margin: EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Paracetamol",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Paracetamol quantity is low, Do you want to order now? ",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      FlatButton(
                        onPressed: () {
                          print("hii");
                        },
                        onLongPress: () {
                          print("long press");
                        },
                        child: Text(
                          "order now",
                          style: TextStyle(fontFamily: "poppins", fontSize: 20),
                        ),
                        textColor: Colors.white,
                        // color: Color.fromARGB(255, 32, 32, 32),
                        // color: Color.fromARGB(255, 246, 129, 49),
                        color: Colors.indigoAccent,
                        splashColor: Color.fromARGB(87, 18, 18, 18),
                        highlightColor: Colors.black38,
                        disabledColor: Colors.blue,
                        disabledTextColor: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 12, bottom: 12),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromARGB(255, 253, 244, 229),
                        child: IconButton(
                          onPressed: () {
                            print("icon button pressed");
                          },
                          splashRadius: 19,
                          splashColor:
                              Color.fromARGB(245, 0, 4, 8).withOpacity(0.4),
                          highlightColor: Color.fromARGB(210, 122, 115, 115),
                          icon: Icon(
                            // Icons.free_cancellation_outlined,
                            Icons.cancel_sharp,
                            // color: Color.fromARGB(255, 246, 129, 49),

                            size: 55,
                          ),
                          padding: EdgeInsets.only(),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                // color: Color.fromARGB(255, 253, 244, 229),
                color: Color.fromARGB(255, 244, 244, 244),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 232, 232, 231),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: viewVisible,
            child: Container(
              height: MediaQuery.of(context).size.height * .21,
              padding: EdgeInsets.only(left: 20, top: 20),
              margin: EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Paracetamol",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Paracetamol quantity is low, Do you want to order now? ",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      FlatButton(
                        onPressed: () {
                          print("hii");
                        },
                        onLongPress: () {
                          print("long press");
                        },
                        child: Text(
                          "order now",
                          style: TextStyle(fontFamily: "poppins", fontSize: 20),
                        ),
                        textColor: Colors.white,
                        color: Colors.indigoAccent,
                        // color: Color.fromARGB(255, 246, 129, 49),
                        // splashColor: Color.fromARGB(87, 18, 18, 18),
                        highlightColor: Colors.black38,
                        disabledColor: Colors.blue,
                        disabledTextColor: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 12, bottom: 12),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromARGB(255, 253, 244, 229),
                        child: IconButton(
                          onPressed: () {
                            print("icon button pressed");
                          },
                          splashRadius: 19,
                          splashColor:
                              Color.fromARGB(245, 0, 4, 8).withOpacity(0.4),
                          highlightColor: Color.fromARGB(210, 122, 115, 115),
                          icon: Icon(
                            // Icons.free_cancellation_outlined,
                            Icons.cancel_sharp,
                            // color: Color.fromARGB(255, 246, 129, 49),

                            size: 55,
                          ),
                          padding: EdgeInsets.only(),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 244, 244, 244),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 232, 232, 231),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: viewVisible,
            child: Container(
              height: MediaQuery.of(context).size.height * .21,
              padding: EdgeInsets.only(left: 20, top: 20),
              margin: EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Paracetamol",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Paracetamol quantity is low, Do you want to order now? ",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      FlatButton(
                        onPressed: () {
                          print("hii");
                        },
                        onLongPress: () {
                          print("long press");
                        },
                        child: Text(
                          "order now",
                          style: TextStyle(fontFamily: "poppins", fontSize: 20),
                        ),
                        textColor: Colors.white,
                        // color: Color.fromARGB(255, 32, 32, 32),
                        // color: Color.fromARGB(255, 246, 129, 49),
                        color: Colors.indigoAccent,
                        splashColor: Color.fromARGB(87, 18, 18, 18),
                        highlightColor: Colors.black38,
                        disabledColor: Colors.blue,
                        disabledTextColor: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 12, bottom: 12),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromARGB(255, 253, 244, 229),
                        child: IconButton(
                          onPressed: () {
                            print("icon button pressed");
                          },
                          splashRadius: 19,
                          splashColor:
                              Color.fromARGB(245, 0, 4, 8).withOpacity(0.4),
                          highlightColor: Color.fromARGB(210, 122, 115, 115),
                          icon: Icon(
                            // Icons.free_cancellation_outlined,
                            Icons.cancel_sharp,
                            // color: Color.fromARGB(255, 246, 129, 49),

                            size: 55,
                          ),
                          padding: EdgeInsets.only(),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 244, 244, 244),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 232, 232, 231),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: viewVisible,
            child: Container(
              height: MediaQuery.of(context).size.height * .21,
              padding: EdgeInsets.only(left: 20, top: 20),
              margin: EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Paracetamol",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Paracetamol quantity is low, Do you want to order now? ",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      FlatButton(
                        onPressed: () {
                          print("hii");
                        },
                        onLongPress: () {
                          print("long press");
                        },
                        child: Text(
                          "order now",
                          style: TextStyle(fontFamily: "poppins", fontSize: 20),
                        ),
                        textColor: Colors.white,
                        // color: Color.fromARGB(255, 32, 32, 32),
                        color: Colors.indigoAccent,
                        splashColor: Color.fromARGB(87, 18, 18, 18),
                        highlightColor: Colors.black38,
                        disabledColor: Colors.blue,
                        disabledTextColor: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 12, bottom: 12),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromARGB(255, 253, 244, 229),
                        child: IconButton(
                          onPressed: () {
                            print("icon button pressed");
                          },
                          splashRadius: 19,
                          splashColor:
                              Color.fromARGB(245, 0, 4, 8).withOpacity(0.4),
                          highlightColor: Color.fromARGB(210, 122, 115, 115),
                          icon: Icon(
                            // Icons.free_cancellation_outlined,
                            Icons.cancel_sharp,
                            // color: Color.fromARGB(255, 246, 129, 49),

                            size: 55,
                          ),
                          padding: EdgeInsets.only(),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 244, 244, 244),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 232, 232, 231),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: viewVisible,
            child: Container(
              height: MediaQuery.of(context).size.height * .21,
              padding: EdgeInsets.only(left: 20, top: 20),
              margin: EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Paracetamol",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Paracetamol quantity is low, Do you want to order now? ",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      FlatButton(
                        onPressed: () {
                          print("hii");
                        },
                        onLongPress: () {
                          print("long press");
                        },
                        child: Text(
                          "order now",
                          style: TextStyle(fontFamily: "poppins", fontSize: 20),
                        ),
                        textColor: Colors.white,
                        // color: Color.fromARGB(255, 32, 32, 32),
                        // color: Color.fromARGB(255, 246, 129, 49),
                        color: Colors.indigoAccent,
                        splashColor: Color.fromARGB(87, 18, 18, 18),
                        highlightColor: Colors.black38,
                        disabledColor: Colors.blue,
                        disabledTextColor: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        padding: EdgeInsets.only(
                            left: 35, right: 35, top: 12, bottom: 12),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromARGB(255, 253, 244, 229),
                        child: IconButton(
                          onPressed: () {
                            print("icon button pressed");
                          },
                          splashRadius: 19,
                          splashColor:
                              Color.fromARGB(245, 0, 4, 8).withOpacity(0.4),
                          highlightColor: Color.fromARGB(210, 122, 115, 115),
                          icon: Icon(
                            // Icons.free_cancellation_outlined,
                            Icons.cancel_sharp,
                            // color: Color.fromARGB(255, 246, 129, 49),

                            size: 55,
                          ),
                          padding: EdgeInsets.only(),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 244, 244, 244),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 241, 235, 224),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
