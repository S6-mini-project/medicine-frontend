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
    final priceConroller = TextEditingController();
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
                          barrierColor: Color.fromARGB(158, 28, 26, 46),
                          context: context,
                          builder: (ctx) => AlertDialog(
                            backgroundColor: Color.fromARGB(255, 19, 24, 50),
                            title: Text(
                              "Confirm your Order",
                              style: TextStyle(
                                fontFamily: "poppins",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                                // decoration: TextDecoration.underline,
                                // decorationThickness: 2,
                                // decorationStyle: TextDecorationStyle.dotted,
                                decorationColor:
                                    Color.fromARGB(186, 245, 73, 73),
                              ),
                            ),
                            content: SizedBox(
                              height: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  EmailInputFb1(
                                      inputController: priceConroller),
                                  // EmailInputFb1(inputController: priceConroller)
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17.0),
                                ),
                                height: 30,
                                minWidth: 60,
                                onPressed: () {
                                  String price = priceConroller.text;
                                  if (!price.isEmpty) {
                                    openIconSnackBar(context, "success!");
                                  } else {
                                    openErrorSnackBar(context, "error");
                                  }
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
                        borderRadius: BorderRadius.circular(16.0),
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

class EmailInputFb1 extends StatelessWidget {
  final TextEditingController inputController;
  const EmailInputFb1({Key? key, required this.inputController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff4338CA);
    const secondaryColor = Color(0xff6D28D9);
    const accentColor = Color(0xffffffff);
    const backgroundColor = Color.fromARGB(255, 15, 36, 103);
    const errorColor = Color(0xffEF4444);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Enter Quantity of Medicine needed",
          style: TextStyle(
              fontSize: 14,
              fontFamily: "poppins",
              fontWeight: FontWeight.normal,
              color: Colors.blueGrey.withOpacity(.9)),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                offset: const Offset(12, 26),
                blurRadius: 50,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.1)),
          ]),
          child: TextField(
            controller: inputController,
            onChanged: (value) {
              //Do something wi
            },
            // keyboardType: TextInputType.emailAddress,
            style: const TextStyle(
                fontSize: 17, color: Color.fromARGB(255, 11, 155, 114)),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.format_list_numbered),
              filled: true,
              fillColor: Color.fromARGB(255, 37, 45, 63),
              hintText: 'Enter the Quantity',
              hintStyle: TextStyle(
                  color: Colors.blueGrey.withOpacity(.75),
                  fontFamily: "poppins"),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 37, 45, 63), width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.lime, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: errorColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 37, 45, 63), width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//snackbar for success
openIconSnackBar(context, String text) {
  // This should be called by an on pressed/tap function
  // Example:
  // Button(
  //  onTap: (){
  //    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //   backgroundColor: Colors.blue,
  //   content: Text("Your Text"),
  //   duration: Duration(milliseconds: 1500),
  // ));
  // }
  //)
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.green,
    content: Row(
      children: [
        Icon(Icons.done_all_rounded),
        SizedBox(
          width: 5,
        ),
       Text(text,style: TextStyle(color:Colors.green[900],fontFamily:"poppins",fontSize: 20))
      ],
    ),
    duration: const Duration(milliseconds: 2500),
  ));
}

//snackbar error message
openErrorSnackBar(context, String text) {
  // This should be called by an on pressed function
  // Example:
  // Button(
  //  onTap: (){
  //    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //   backgroundColor: Colors.blue,
  //   content: Text("Your Text"),
  //   duration: Duration(milliseconds: 1500),
  // ));
  // }
  //)
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.red,
    content:  Row(
      children: [
        Icon(Icons.error_rounded,color:Colors.red[900],),
        SizedBox(
          width: 5,
        ),
        Text(text,style: TextStyle(color: Color.fromARGB(255, 137, 5, 5),fontFamily:"poppins",fontSize: 20)),
      ],
    ),
    duration: Duration(milliseconds: 2500),
  ));
}
