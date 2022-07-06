import 'package:flutter/material.dart';
import './notificationWidget.dart';

class OrderCardWidget extends StatefulWidget {
  @override
  OrderCardWidgetState createState() => OrderCardWidgetState();
}

class OrderCardWidgetState extends State {
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
    return Visibility(
      maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      visible: viewVisible,
      child: Container(
        height: MediaQuery.of(context).size.height * .21,
        width: MediaQuery.of(context).size.width,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Color.fromARGB(255, 8, 33, 75),
          elevation: 6,
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Paracetamol",
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
                Text(
                  "Paracetamol quantity is low, Do you want to order now? ",
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.redAccent,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    RaisedButton(
                      focusElevation: 4,
                      onPressed: () {
                        // print("hii");
                        showDialog(
                          barrierColor: Colors.white24,
                          context: context,
                          builder: (ctx) => AlertDialog(
                            backgroundColor: Color.fromARGB(255, 234, 251, 251),
                            title: Text(
                              "Confirm your Order",
                              style: TextStyle(
                                fontFamily: "poppins",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 15, 3, 82),
                                // decoration: TextDecoration.underline,
                                // decorationThickness: 2,
                                // decorationStyle: TextDecorationStyle.dotted,
                                decorationColor:
                                    Color.fromARGB(186, 245, 73, 73),
                              ),
                            ),
                            content: Container(
                              padding: const EdgeInsets.all(25.0),
                              child: Text(
                                "Quantity: 100nos.\n\n"
                                        "Price" +
                                    "          " +
                                    ":" +
                                    "1000Rs ",
                                style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Color.fromARGB(255, 8, 28, 201),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromARGB(255, 20, 20, 130)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                            actions: <Widget>[
                              FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                height: 30,
                                minWidth: 60,
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                                color: Colors.green,
                                splashColor: Colors.white12,
                                child: Text(
                                  "ok",
                                  style: TextStyle(
                                    fontFamily: "poppins",
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 235, 237, 237),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      onLongPress: () {
                        print("long press");
                      },
                      child: Text(
                        "ok",
                        style: TextStyle(
                            color: Colors.white70,
                            fontFamily: "poppins",
                            fontSize: 20),
                      ),
                      textColor: Colors.blueGrey,
                      color: Color.fromARGB(255, 24, 48, 90),
                      splashColor: Color.fromARGB(87, 18, 18, 18),
                      highlightColor: Colors.black38,
                      disabledColor: Colors.blue,
                      disabledTextColor: Colors.blueGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      padding: EdgeInsets.only(
                          left: 35, right: 35, top: 12, bottom: 12),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(110),
                      color: Color.fromARGB(255, 6, 23, 52),
                      child: IconButton(
                        onPressed: () {
                          print("icon button pressed");
                          hideWidget();
                        },
                        splashRadius: 19,
                        splashColor:
                            Color.fromARGB(245, 224, 84, 71).withOpacity(0.4),
                        highlightColor: Color.fromARGB(210, 234, 100, 100),
                        icon: Icon(
                          Icons.cancel_presentation_outlined,
                          size: 50,
                          // color: Colors.indigoAccent,
                          color: Colors.green,
                        ),
                        padding: EdgeInsets.only(),
                        // alignment: Alignment.center,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
