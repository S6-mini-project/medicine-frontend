import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';


class ProfileWidget extends StatelessWidget {
  /// the base color of the images background and its concentric circles.
  final Color primaryColor;

  /// the profile image to be displayed.
  final ImageProvider image;

  ///the diameter of the entire widget, including the concentric circles.
  final double size;

  /// the width between the edges of each concentric circle.
  final double transitionBorderwidth;
  // Call when you want to show the date picker

  const ProfileWidget(
      {Key? key,
      required Color this.primaryColor,
      required ImageProvider this.image,
      this.size = 190.0,
      this.transitionBorderwidth = 20.0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Container(
                    child: Container(
                  height: size,
                  width: size,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: primaryColor.withOpacity(0.05)),
                )),
                Container(
                  child: Container(
                      height: size - transitionBorderwidth,
                      width: size - transitionBorderwidth,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(stops: [
                          0.01,
                          0.5
                        ], colors: [
                          Colors.white,
                          primaryColor.withOpacity(0.1)
                        ]),
                      )),
                ),
                Container(
                  child: Container(
                      height: size - (transitionBorderwidth * 2),
                      width: size - (transitionBorderwidth * 2),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: primaryColor.withOpacity(0.4))),
                ),
                Container(
                  child: Container(
                      height: size - (transitionBorderwidth * 3),
                      width: size - (transitionBorderwidth * 3),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: primaryColor.withOpacity(0.5))),
                ),
                Container(
                    child: Container(
                        height: size - (transitionBorderwidth * 4),
                        width: size - (transitionBorderwidth * 4),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover, image: image)))),
              ],
            ),
            Text(
              "Amarjith Raj",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            )
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Headline(),
      ],
    );
  }
}

class Headline extends StatelessWidget {
  const Headline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Quick Services",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        fontFamily: "poppins"),
                  ),
                ],
              ),
              const Text(
                "View More",
                style: TextStyle(
                    color: Color(0xff15BE77),
                    fontWeight: FontWeight.normal,
                    fontFamily: "poppins"),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(5),
            child: Row(children: [
              Container(
                height: 150,
                width: 150,
                child: Column(
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
          ),
          
        ],
      ),
    );
  }
}



// pie chart
