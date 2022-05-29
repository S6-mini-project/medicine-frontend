import 'package:flutter/material.dart';

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
          color: Color.fromARGB(255, 244, 244, 244),  
          elevation: 1,  
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
                      splashColor: Color.fromARGB(87, 18, 18, 18),
                      highlightColor: Colors.black38,
                      disabledColor: Colors.blue,
                      disabledTextColor: Colors.blueGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      padding:
                          EdgeInsets.only(left: 35, right: 35, top: 12, bottom: 12),
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
                          hideWidget();
                        },
                        splashRadius: 19,
                        splashColor: Color.fromARGB(245, 0, 4, 8).withOpacity(0.4),
                        highlightColor: Color.fromARGB(210, 122, 115, 115),
                        icon: Icon(
                          Icons.cancel_sharp,
                          size: 50,
                          // color: Colors.indigoAccent,
                          color: Colors.red,
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
