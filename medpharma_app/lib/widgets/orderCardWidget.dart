import 'package:flutter/material.dart';
import './notificationWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'orderWidget.dart';
class OrderCardWidget extends StatefulWidget {
   final String medicineName;

  const OrderCardWidget({ Key? key, required this.medicineName }): super(key: key);

  @override
  OrderCardWidgetState createState() => OrderCardWidgetState();
}

class OrderCardWidgetState extends State<OrderCardWidget> {
  bool viewVisible = true;
  bool veCheck = true;
   final inputController = TextEditingController();
  // final quantityController = TextEditingController();
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
    // final priceConroller = TextEditingController();
    const primaryColor = Color(0xff4338CA);
    const secondaryColor = Color(0xff6D28D9);
    const accentColor = Color(0xffffffff);
    const backgroundColor = Color.fromARGB(255, 15, 36, 103);
    const errorColor = Color(0xffEF4444);
   
    // bool veCheck = true;

    return Visibility(
      maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      visible: viewVisible,
      child: Container(
        height: MediaQuery.of(context).size.height * .2,
        width: MediaQuery.of(context).size.width,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Color.fromARGB(255, 4, 17, 38),
          elevation: 6,
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.medicineName,
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                Text(
                  "Paracetamol quantity is low, Do you want to order now? ",
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.blueGrey,
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
                                  // EmailInputFb1(),
                                  // EmailInputFb1(inputController: priceConroller)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Enter Quantity of Medicine needed",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "poppins",
                                            fontWeight: FontWeight.normal,
                                            color: Colors.blueGrey
                                                .withOpacity(.9)),
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
                                              color:
                                                  Colors.grey.withOpacity(.1)),
                                        ]),
                                        child: TextField(
                                          controller: inputController,
                                          onChanged: (value) {
                                            //Do something wi
                                          },
                                          // keyboardType: TextInputType.emailAddress,
                                          style: const TextStyle(
                                              fontSize: 17,
                                              color: Color.fromARGB(
                                                  255, 11, 155, 114)),
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(
                                                Icons.format_list_numbered),
                                            filled: true,
                                            fillColor:
                                                Color.fromARGB(255, 37, 45, 63),
                                            hintText: 'Enter the Quantity',
                                            errorText: veCheck
                                                ? null
                                                : 'Quantity cannot be empty',
                                            hintStyle: TextStyle(
                                                color: Colors.blueGrey
                                                    .withOpacity(.75),
                                                fontFamily: "poppins"),
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 0.0,
                                                    horizontal: 20.0),
                                            border: const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 37, 45, 63),
                                                  width: 1.0),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0)),
                                            ),
                                            focusedBorder:
                                                const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.lime,
                                                  width: 1.0),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0)),
                                            ),
                                            errorBorder:
                                                const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: errorColor,
                                                  width: 1.0),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0)),
                                            ),
                                            enabledBorder:
                                                const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 37, 45, 63),
                                                  width: 1.0),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
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
                                  // String price = priceConroller.text;
                                  // if (!price.isEmpty) {
                                  //   // _validateLogin()
                                  //   openIconSnackBar(context, "success!");
                                  // } else {
                                  //   openErrorSnackBar(context, "error");
                                  // }
                                  _validateVendor();
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
                      child: Icon(Icons.done, color: Colors.green, size: 20),
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
                          left: 30, right: 30, top: 10, bottom: 10),
                    ),
                    SizedBox(
                      width: 170,
                    ),
                    RaisedButton(
                      focusElevation: 4,
                      onPressed: () {
                        // print("hii");
                      },
                      onLongPress: () {
                        print("long press");
                      },
                      child: Icon(Icons.delete, color: Colors.red, size: 20),
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
                          left: 30, right: 30, top: 10, bottom: 10),
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
  void _validateVendor() {
    String qty = inputController.text;
    setState(() {
      veCheck = true;
    });
    if (qty.isEmpty) {
      setState(() {
        veCheck = false;
      });
    } else {
      vendorData(qty).then((value) {
        if (value) {
          openIconSnackBar(context, "success!");
        } else {
          openErrorSnackBar(context, "error");
        }
      });
    }
  }
}


// class EmailInputFb1 extends StatefulWidget {
//   const EmailInputFb1({Key? key}) : super(key: key);
//   @override
//   State<EmailInputFb1> createState() => _EmailInputFb1State();
// }

// class _EmailInputFb1State extends State<EmailInputFb1> {
//   @override
//   Widget build(BuildContext context) {
//     const primaryColor = Color(0xff4338CA);
//     const secondaryColor = Color(0xff6D28D9);
//     const accentColor = Color(0xffffffff);
//     const backgroundColor = Color.fromARGB(255, 15, 36, 103);
//     const errorColor = Color(0xffEF4444);

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           "Enter Quantity of Medicine needed",
//           style: TextStyle(
//               fontSize: 14,
//               fontFamily: "poppins",
//               fontWeight: FontWeight.normal,
//               color: Colors.blueGrey.withOpacity(.9)),
//         ),
//         const SizedBox(
//           height: 15,
//         ),
//         Container(
//           height: 50,
//           decoration: BoxDecoration(boxShadow: [
//             BoxShadow(
//                 offset: const Offset(12, 26),
//                 blurRadius: 50,
//                 spreadRadius: 0,
//                 color: Colors.grey.withOpacity(.1)),
//           ]),
//           child: TextField(
//             controller: inputController,
//             onChanged: (value) {
//               //Do something wi
//             },
//             // keyboardType: TextInputType.emailAddress,
//             style: const TextStyle(
//                 fontSize: 17, color: Color.fromARGB(255, 11, 155, 114)),
//             decoration: InputDecoration(
//               prefixIcon: Icon(Icons.format_list_numbered),
//               filled: true,
//               fillColor: Color.fromARGB(255, 37, 45, 63),
//               hintText: 'Enter the Quantity',
//               errorText: veCheck ? null : 'Quantity cannot be empty',
//               hintStyle: TextStyle(
//                   color: Colors.blueGrey.withOpacity(.75),
//                   fontFamily: "poppins"),
//               contentPadding:
//                   const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
//               border: const OutlineInputBorder(
//                 borderSide: BorderSide(
//                     color: Color.fromARGB(255, 37, 45, 63), width: 1.0),
//                 borderRadius: BorderRadius.all(Radius.circular(10.0)),
//               ),
//               focusedBorder: const OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.lime, width: 1.0),
//                 borderRadius: BorderRadius.all(Radius.circular(10.0)),
//               ),
//               errorBorder: const OutlineInputBorder(
//                 borderSide: BorderSide(color: errorColor, width: 1.0),
//                 borderRadius: BorderRadius.all(Radius.circular(10.0)),
//               ),
//               enabledBorder: const OutlineInputBorder(
//                 borderSide: BorderSide(
//                     color: Color.fromARGB(255, 37, 45, 63), width: 1.0),
//                 borderRadius: BorderRadius.all(Radius.circular(10.0)),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   void _validateVendor() {
//     String qty = inputController.text;
//     setState(() {
//       veCheck = true;
//     });
//     if (qty.isEmpty) {
//       setState(() {
//         veCheck = false;
//       });
//     } else {
//       vendorData(qty).then((value) {
//         if (value) {
//           openIconSnackBar(context, "success!");
//         } else {
//           openErrorSnackBar(context, "error");
//         }
//       });
//     }
//   }
// }

// class EmailInputFb1 extends StatelessWidget {
//   final TextEditingController inputController;
//   const EmailInputFb1({Key? key, required this.inputController})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//   }

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
        Text(text,
            style: TextStyle(
                color: Colors.green[900], fontFamily: "poppins", fontSize: 20))
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
    content: Row(
      children: [
        Icon(
          Icons.error_rounded,
          color: Colors.red[900],
        ),
        SizedBox(
          width: 5,
        ),
        Text(text,
            style: TextStyle(
                color: Color.fromARGB(255, 137, 5, 5),
                fontFamily: "poppins",
                fontSize: 20)),
      ],
    ),
    duration: Duration(milliseconds: 2500),
  ));
}

Future _Vendor(String qty) async {  
  final response = await http.post(
    // Uri.parse('http://192.168.18.178:8000/api/vendor?qty=$qty'), 
      Uri.parse('http://192.168.18.178:8000/api/vendor'),// TODO
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      // "qty": qty
    },
    body: jsonEncode(<String, String>{'qty': qty}),
    // body: qty
  );
  // print(response.body);
  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.

    return jsonDecode(response.body);
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to convert!');
  }
}

Future<bool> vendorData(String qty) async {
  print('Vendor Invoked');
  // Future<AuthUser> au;
  try {
    await _Vendor(qty).then((value) {
      // print('values send');
    });
  } catch (e) {
    // print('Error');
    return true;
  }
  return true;
}
