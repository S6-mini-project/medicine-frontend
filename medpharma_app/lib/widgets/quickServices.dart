import 'package:flutter/material.dart';

class QuickServices extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(5),
            child: Row(children: [
              Container(
                height: 150,
                width: 150,
                child:
                    Column(
                      children: [
                          SizedBox(
                      height: 4,
                    ),
                        Image.asset("assets/call-doctor.png", fit: BoxFit.contain),
                          Text(
                      "Consult doctor",
                      style: TextStyle(
                          color: Color.fromARGB(255, 220, 220, 220),
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins"),
                    ),
                      ],
                    ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 76, 104, 217),
                      Color.fromARGB(255, 159, 106, 185),
                    ])),
              ),
              Container(
                height: 150,
                width: 150,
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                     SizedBox(
                      height: 10,
                    ),
                    Image.asset("assets/call-vendor.png", fit: BoxFit.contain),
                    Text(
                      "Contact Vendor",
                      style: TextStyle(
                         color: Color.fromARGB(255, 220, 220, 220),
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins"),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 76, 104, 217),
                      Color.fromARGB(255, 159, 106, 185),
                    ])),
              ),
              Container(
                height: 150,
                width: 150,
                margin: EdgeInsets.all(5),
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Image.asset("assets/hospital.png", fit: BoxFit.contain),
                     Text(
                      "Emergency Services",
                      style: TextStyle(
                         color: Color.fromARGB(255, 220, 220, 220),
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins"),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 76, 104, 217),
                      Color.fromARGB(255, 159, 106, 185),
                    ])),
              ),
            ]),
          );
  }
}