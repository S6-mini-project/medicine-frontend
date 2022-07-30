import 'package:flutter/material.dart';
import './totalStock.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AllMedScreen extends StatefulWidget {
  @override
  State<AllMedScreen> createState() => _AllMedScreenState();
}

class _AllMedScreenState extends State<AllMedScreen> {
   bool viewVisible = true;
  bool veCheck = true;
  bool vCheck = true;
   final inputController = TextEditingController();
   final minstockController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 23, 52),
      body: SafeArea(child: TotalStock()),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Transform.scale(
        scale: 1.2,
        child: FloatingActionButton(
          tooltip: 'add medicine',
          focusColor: Colors.green,
          splashColor: Colors.grey,
          highlightElevation: 50,
          hoverElevation: 50,
          elevation: 12,
          autofocus: true,
          child: Icon(Icons.add,size: 25,),
          backgroundColor: Color.fromARGB(255, 46, 143, 140),
          onPressed: () {
              showDialog(
                            barrierColor: Color.fromARGB(158, 28, 26, 46),
                            context: context,
                            builder: (ctx) => AlertDialog(
                              backgroundColor: Color.fromARGB(255, 19, 24, 50),
                              title: Text(
                                "Enter the new Medicine",
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
                                height: 250,
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
                                          "Enter name of Medicine ",
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
                                              hintText: 'Enter medicine name',
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
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.red,
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
                                    ),
                                    SizedBox(height: 30,),
                                     Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Enter name of min stock ",
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
                                            controller: minstockController,
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
                                              hintText: 'Enter the min stock',
                                              errorText: vCheck
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
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.red,
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
                                    ),

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
                                    _validateAdd();
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
        ),
      ),
    );
  }
   void _validateAdd() {
    String qty = inputController.text;
    String minstock = minstockController.text;
    setState(() {
      veCheck = true;
      vCheck = true;
    });
    if (qty.isEmpty) {
      setState(() {
        veCheck = false;
      });
    } 
    else if(minstock.isEmpty){
       setState(() {
        vCheck = false;
      });
    }
    else {
      addMedData(qty,minstock).then((value) {
        if (value) {
          openIconSnackBar(context, "success!");
        } else {
          openErrorSnackBar(context, "error");
        }
      });
    }
  }
}


openIconSnackBar(context, String text) {
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

Future _addMed(String qty,String minstock) async {  
  final response = await http.post(
    // Uri.parse('http://192.168.38.252:8000/api/vendor'), 
      Uri.parse('http://192.168.18.178:5000/api/medstocks'),// TODO
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      // "qty": qty
    },
    body: jsonEncode(<String, String>{'medicine_name': qty,'minimum_stock':minstock}),
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

Future<bool> addMedData(String qty,String minstock) async {
  print('Vendor Invoked');
  // Future<AuthUser> au;
  try {
    await _addMed(qty,minstock).then((value) {
      // print('values send');
    });
  } catch (e) {
    // print('Error');
    return true;
  }
  return true;
}